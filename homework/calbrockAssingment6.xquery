declare default element namespace "urn:isbn:1-931666-22-9";

<books>
{
for $book in collection("file:///c://Users/Owner/Desktop/xquery/
xquery-assignment?select=*.xml")/ead


(:What's the unique ID for each finding aid?:)
let $IDs :=$book/ead/archdesc[1]/dsc[1]//@id

(:Whats the title of each finding aid? :)
let $title :=$book/ead/archdesc[1]/dsc[1]/node()/did/unittitle[1]

(:What's the number of years each finding aid coveres?:)
let $dates :=$book/ead/archdesc[1]/dsc[1]/c01//c02//did//unittitle//unitdate

(:  Whats the name of the person who encoded each finding aid? :)
let $encoders :=$book/ead/archdesc[1]/dsc[1]/c01/c02/did[1]/unittitle


(: How many times was each finding aid changed :)
let $start:=$book/ead/eadheader[1]/revisiondesc[1]/change[1]/date[1]/@normal
let $end:=$book/ead/eadheader[1]/revisiondesc[1]/change[2]/date[1]/@normal


(: What is the physical extent of each finding aid :)
let $placeed :=$book/ead/archdesc[1]/dsc[1]//@level |@label

let $placement :=$book/ead/archdesc[1]/dsc[1]//@level

(: In a single element per collection, could you list all of the access restriction 
separated by a |? gave up  :)


(: What are the indexing terms used for each collection? Please express this in
a sub-elements with each term in its own element. DOn't understand right now:)


/ead/archdesc[1]/controlaccess[1]/controlaccess[1]/list[1]/item[1]/extref[1]
/ead/archdesc[1]/controlaccess[1]/controlaccess[1]/list[1]/item[1]/extref[1]/corpname[1]
(: How many files in each collection tried gave up  :)

return
<file>



<counted>{count($placement)}</counted>


<position>


 <IDs>{data($Ds)}</IDs>
 <title>{string-join($book/ead/archdesc[1]/dsc[1]/c01/c02//@type, ' | ')
 }</title>
 </position>
 
 
    <fileCount>
    {for $place in $placement where $place="file"
    return
    <counted>{data($placement)}</counted>
    
    }
    
    </fileCount>




<changes>
{for $n in ($book)
return 
<c>={number($start) - number($end)}

</c>
</file>
</books>