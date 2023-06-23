## **`Mistery Box Advanced inspired CxC_MysteryV2-QBCore`**

**ES:**

**Pasos para instalar:**

1.  Crear dos items en el qbcore/shared/item.lua

Agregar linea:

    ['basicbox'] =
        {
    	    ['name'] = 'basicbox',
    	    ['label'] = 'Caja de Sorpresas',
    	    ['weight'] = 700,
    	    ['type'] = 'item',
    	    ['image'] = 'basic_box.png',
    	    ['unique'] = false,
    	    ['useable'] = true,
    	    ['shouldClose'] = true,
    	    ['combinable'] = nil,
    	    ['description'] = 'Caja de sospresas'
        },



    ['premiumbox'] =
    	{
    		['name'] = 'premiumbox',
    		['label'] = 'Caja de Sorpresas Premium',
    		['weight'] = 700,
    		['type'] = 'item',
    		['image'] = 'premium_box.ng',
    		['unique'] = false,
    		['useable'] = true,
    		['shouldClose'] = true,
    		['combinable'] = nil,
    		['description'] = 'Caja de sospresas premium'
    	},

2. List item

Para dar de forma default cuando se crea un pj nuevo: Agregar los dos items en lugar de los items que trae QBCore en default

3. Copiar recurso en el carpeta resource de su servidor

4. iniciar en el cfg utilizando " ensure MisteryBoxAdvanced "

## Informacion util:

**Este script incluye la opcion de que los items sean de forma random o que incluya todos los items dentro de las cajas.
Puedes agregar los items que sean necesarios siempre mantieniendo la estructura.**

**En la carpeta assets incluida estan las imagenes que tu debes usar para el inventario que estes usando**

**Este script fue basado e inspirado en el recurso CxC_MysteryV2-QBCore - https://github.com/CxCore-xyz/CxC_MysteryV2-QBCore**

## Por consultas o info en discord https://discord.gg/PvFtrdcvaz

**EN:**

**Steps to install:**

1.  Create two items in qbcore/shared/item.lua

Add line code:

    ['basic_box'] =
        {
    	    ['name'] = 'basic_box',
    	    ['label'] = 'Caja de Sorpresas',
    	    ['weight'] = 700,
    	    ['type'] = 'item',
    	    ['image'] = 'basic_box.png',
    	    ['unique'] = true,
    	    ['useable'] = true,
    	    ['shouldClose'] = true,
    	    ['combinable'] = nil,
    	    ['description'] = 'Caja de sospresas'
        },



    ['premium_box'] =
    	{
    		['name'] = 'basic_box',
    		['label'] = 'Caja de Sorpresas Premium',
    		['weight'] = 700,
    		['type'] = 'item',
    		['image'] = 'premium_box.ng',
    		['unique'] = true,
    		['useable'] = true,
    		['shouldClose'] = true,
    		['combinable'] = nil,
    		['description'] = 'Caja de sospresas premium'
    	},

2.  To default when creating a new pj: Add the two items instead of the items that QBCore brings by default

3.  Copy resource to your server's resource folder

4.  start resource in the cfg using " ensure MisteryBoxAdvanced "

## Useful information:

**This script includes the option for the items to be random or to include all the items inside the boxes.
You can add the items that are necessary always maintaining the structure.**

**In the included assets folder are the images that you should use for the inventory you are using**

**This script was based on and inspired by the CxC_MysteryV2-QBCore - https://github.com/CxCore-xyz/CxC_MysteryV2-QBCore**

## For questions or information on discord or https://discord.gg/PvFtrdcvaz
