---------------------------------------
--CONSULTAS GENERADORAS--
---------------------------------------

SELECT  id_compra,
      id_proveedor,
      id_mp,
      fecha_compra,
      lote,
      cantidad,
      precio,
      descuento
  FROM compras
  FOR JSON PATH

SELECT id_dulce,
      nombre,
      precio_uni,
      stock,
      lote,
      fecha_cad,
      reorden,
      tipo
  FROM dulces
  FOR JSON PATH

SELECT id_elaboracion,
      id_fabrica,
      id_trabajador,
      id_mp,
      id_dulce,
      cantidad
  FROM elaboracion
  FOR JSON PATH

SELECT id_fabrica
      ,telefono 
      ,nom_responsable
      ,estado as [domicilio.estado]
      ,municipio as [domicilio.municipio]
      ,colonia as [domicilio.colonia]
      ,domicilio as [domicilio.domicilio]
      ,cp as [domicilio.cp]
  FROM fabricas
FOR JSON PATH

SELECT id_mp
      ,nombre
      ,tipo
      ,lote
      ,existencia
      ,fecha_cad
      ,precio
  FROM materias_primas
  FOR JSON PATH

SELECT id_pedido
      ,id_usuario
      ,id_sucursal
      ,id_dulce
      ,cantidad
      ,fecha_pedido
  FROM pedidos
  FOR JSON PATH

SELECT  id_proveedor
      ,nombre
      ,rfc
      ,direccion
      ,JSON_ARRAY(telefono) AS telefono
  FROM proveedores
  FOR JSON PATH

SELECT id_registro
      ,id_sucursal
      ,id_dulce
      ,cantidad
      ,fecha_recepcion
      ,precio_uni
  FROM registros
  FOR JSON PATH

SELECT  id_repartos
      ,id_fabrica
      ,id_sucursal
      ,id_trabajador
      ,id_dulce
      ,cantidad
      ,fecha_reparto
  FROM repartos
  FOR JSON PATH

SELECT  id_sucursal
      ,nom_responsable
      ,JSON_ARRAY(telefono) as telefono
      ,estado as [direccion.estado]
      ,municipio as [direccion.municipio]
      ,colonia as [direccion.colonia]
      ,domicilio as [direccion.domicilio]
      ,cp as [direccion.cp]
  FROM sucursales
  for JSON PATH

SELECT  id_trabajador
      ,id_sucursal
      ,apellido_paterno as [nombre.apellido_paterno]
      ,apellido_materno as [nombre.apellido_materno]
      ,nombres as [nombre.nombres]
      ,fecha_nacimiento
      ,fecha_ingreso
      ,rfc
      ,tipo
      ,JSON_ARRAY(telefono) as telefono
  FROM trabajadores
  for JSON PATH

SELECT id_usuario
      ,apellido_paterno as [nombre.apellido_paterno]
      ,apellido_materno as [nombre.apellido_materno]
      ,nombres as [nombre.nombres]
      ,email
      ,JSON_ARRAY(telefono) as telefono
  FROM usuarios
  FOR JSON PATH

SELECT id_venta
      ,id_usuario
      ,id_sucursal
      ,id_dulce
      ,cantidad
      ,fecha
      ,precio_uni
      ,descuento
  FROM ventas
  FOR JSON PATH