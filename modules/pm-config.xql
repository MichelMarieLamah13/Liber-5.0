
xquery version "3.1";

module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config";

import module namespace pm-liber-web="http://www.tei-c.org/pm/models/liber/web/module" at "../transform/liber-web-module.xql";
import module namespace pm-liber-print="http://www.tei-c.org/pm/models/liber/print/module" at "../transform/liber-print-module.xql";
import module namespace pm-liber-latex="http://www.tei-c.org/pm/models/liber/latex/module" at "../transform/liber-latex-module.xql";
import module namespace pm-liber-epub="http://www.tei-c.org/pm/models/liber/epub/module" at "../transform/liber-epub-module.xql";
import module namespace pm-liber-fo="http://www.tei-c.org/pm/models/liber/fo/module" at "../transform/liber-fo-module.xql";
import module namespace pm-docx-tei="http://www.tei-c.org/pm/models/docx/tei/module" at "../transform/docx-tei-module.xql";

declare variable $pm-config:web-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "liber.odd" return pm-liber-web:transform($xml, $parameters)
    default return pm-liber-web:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:print-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "liber.odd" return pm-liber-print:transform($xml, $parameters)
    default return pm-liber-print:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:latex-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "liber.odd" return pm-liber-latex:transform($xml, $parameters)
    default return pm-liber-latex:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:epub-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "liber.odd" return pm-liber-epub:transform($xml, $parameters)
    default return pm-liber-epub:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:fo-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "liber.odd" return pm-liber-fo:transform($xml, $parameters)
    default return pm-liber-fo:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:tei-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "docx.odd" return pm-docx-tei:transform($xml, $parameters)
    default return error(QName("http://www.tei-c.org/tei-simple/pm-config", "error"), "No default ODD found for output mode tei")
            
    
};
            
    