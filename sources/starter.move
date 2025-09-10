module starter::practica_sui;

use std::string::{String, utf8};

public struct Banco has key {
    id: UID,
    nombre: String,
    clientes: vector<Cliente>,
}

public struct Cliente has store, drop {
    nombre: String,
    edad: u16,
    genero: String,
    rfc: String,
    deuda: u64,
}

#[error] 
const ID_NO_EXISTE: vector<u8> = b"El ID proporcionado no existe.";

public fun crear_banco(nombre: String, ctx: &mut TxContext) {
    let banco = Banco { id: object::new(ctx), nombre, clientes: vector[] };
    transfer::transfer(banco, tx_context::sender(ctx));
}

public fun apertura_prestamo_cliente(banco: &mut Banco, nombre: String, edad: u16, genero: String, rfc: String, deuda: u64,) {
    
    let cliente = Cliente { nombre, edad, genero, rfc, deuda};
    banco.clientes.push_back(cliente);
}

public fun eliminar_ultimo_cliente(banco: &mut Banco) {
    banco.clientes.pop_back();
}

public fun eliminar_cliente(banco: &mut Banco, id: u64) {
    assert!((banco.clientes.length() > id), ID_NO_EXISTE);
    banco.clientes.remove(id);
}

public fun abonar_a_cuenta(banco: &mut Banco, id: u64, abono: u64) {
    assert!((banco.clientes.length() > id), ID_NO_EXISTE);
    let cliente = banco.clientes.borrow_mut(id);
    cliente.deuda = cliente.deuda - abono;
}

public fun solicitar_mas_deuda(banco: &mut Banco, id: u64, solicitud: u64) {
    assert!((banco.clientes.length() > id), ID_NO_EXISTE);
    let cliente = banco.clientes.borrow_mut(id);
    cliente.deuda = cliente.deuda + solicitud;
}