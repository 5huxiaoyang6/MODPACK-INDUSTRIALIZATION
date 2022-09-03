// priority: 0

console.info('Hello, World! (You will see this line every time client resources reload)')

onEvent('jei.hide.items', event => {
	// Hide items in JEI here
	// event.hide('minecraft:cobblestone')
})
onEvent('item.tooltip', tooltip => {
	// Add tooltip to all of these items
	//tooltip.add(['quark:backpack', 'quark:magnet', 'quark:crate'], 'Added by Quark Oddities')
	// You can also use any ingredient except #tag
	//tooltip.add(/refinedstorage:red_/, 'Can be any color')
	// Multiple lines with an array []. You can also escape ' by using other type of quotation marks
	//tooltip.add('thermal:latex_bucket', ["Not equivalent to Industrial Foregoing's Latex", 'Line 2'])
	
	//tooltip.addAdvanced('thermal:latex_bucket', (item, advanced, text) => {
	  //text.add(0, Text.of('Hello')) // Adds text in first line, replacing title. If you want 2nd line, the index must //be 1
	//})
	
  })