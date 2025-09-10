
## Crear cliente
sui client call --package 0xce27fac2060665b9a123baac93baf2f7046002a5a3c34ba61d61d80a05df7541 --module practica_sui --function apertura_prestamo_cliente --args 0xc8ac4848bcacaead8fbd9803fd3e7b97cdcbea0493d1d438c80d274eda424338 "Javier Lopez" 27 "Masculino" "JAVILOPE123" 100000

## Abonar
sui client call --package 0xce27fac2060665b9a123baac93baf2f7046002a5a3c34ba61d61d80a05df7541 --module practica_sui --function abonar_a_cuenta --args 0xc8ac4848bcacaead8fbd9803fd3e7b97cdcbea0493d1d438c80d274eda424338 1 10000

## Solicitar mas deuda
sui client call --package 0xce27fac2060665b9a123baac93baf2f7046002a5a3c34ba61d61d80a05df7541 --module practica_sui --function solicitar_mas_deuda --args 0xc8ac4848bcacaead8fbd9803fd3e7b97cdcbea0493d1d438c80d274eda424338 1 20000

## Eliminar ultimo cliente
sui client call --package 0xce27fac2060665b9a123baac93baf2f7046002a5a3c34ba61d61d80a05df7541 --module practica_sui --function eliminar_ultimo_cliente --args 0xc8ac4848bcacaead8fbd9803fd3e7b97cdcbea0493d1d438c80d274eda424338

## Eliminar cliente
sui client call --package 0xce27fac2060665b9a123baac93baf2f7046002a5a3c34ba61d61d80a05df7541 --module practica_sui --function eliminar_clie
nte --args 0xc8ac4848bcacaead8fbd9803fd3e7b97cdcbea0493d1d438c80d274eda424338 0
