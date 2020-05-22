let names = [];
document.querySelectorAll(".bc-size-headline3")
    .forEach(e => names.push(e.innerHTML));

let links = [];
document.querySelectorAll(".adbl-lib-action-download")
    .forEach(ele => links.push(ele.children[0].href));

// we do not like ugly spaces
let newNames = names.map(n => `"${n.split(" ").join("_")}"`);
let newLinks = links.map(l => `"${l}"`);

console.log("Please copy: ", newNames.join(" \n"));
console.log("Please copy: ", newLinks.join(" \n"));
console.log("... and place the resulting strings into the specific position within shell script!");

