

export function randint (min:number, max:number): number {
	return Math.floor(min+Math.random()*(max-min));
}

// random elem of list
export function randchoice (list: any[]) {
	return list[randint(0, list.length)];
} 