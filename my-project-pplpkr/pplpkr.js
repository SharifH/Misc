function main() {
	"use strict";
		
	function randomize ( myArray ) {
		var i = myArray.length, j, temp;
		if ( i === 0 ) return false;
		while ( --i ) {
			j = Math.floor( Math.random() * ( i + 1 ) );
			temp = myArray[i];
			myArray[i] = myArray[j]; 
			myArray[j] = temp;
		}
		return myArray;
	}

	function pplpkr(options) {
		var people = ["Alex", "Brian", "Dave", "Donielle", "Elen", "Ian",
			"Karl", "Kevin", "Kristine", "Karl", "Lauren", 
			"Lior", "Megan", "Ricky", "Ryan", "Sharif", "Travis",
			"Xiao", "Josh", "Tod", "Justin"]
			, i
			, group
			, group_sliced
			, index_first= 0
			, index_end = options.groups;

		if (options.randomize === true) {
			group = randomize(people);
			for (i=0; i<group.length; i++) {
				if (i%options.groups === 0) {
					group_sliced = group.slice(index_first, index_end);
					index_first = index_end;
					index_end += options.groups;
					console.log(group_sliced);
				}
			}
		}
	}

	pplpkr(
	{  groups: 3
	,  randomize: true
	});
}

main();