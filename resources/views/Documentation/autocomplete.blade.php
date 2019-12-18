<ul class="list-group">
    <li class="list-group-item">
        <h3>Use as HTML in View</h3>
        <ul>
            <li>Use following html with input class <code>autocomplete-search</code>
                and then no need to include javascript portion.</li>
            <li>For more customized need to use different class with the JS part.</li>
        </ul>
<pre class="line-numbers"><code class="language-html">&lt;div class="col-md-4">
    &lt;div class="form-group row">
        &lt;label class="col-sm-12 form-label">LABEL NAME&lt;/label>
        &lt;div class="col-sm-12">
            &lt;input type="text"
                   class="form-control CUSTOM-AUTOCOMPLETE-CLASS"
                   data-slug="UNIQUE_NAME_LIKE_ID"
                   data-name="INPUT_NAME"
                   data-value="INPUT VALUE TO SET"
                   data-autocompleteurl="ROUTE_TO_PROCESS_QUERY"/>
        &lt;/div>
    &lt;/div>
&lt;/div></code></pre>
        </li>
        <li class="list-group-item">
            <h3>Use as script in view</h3>
            <ul>
                <li>Use In case of customized autocomplete</li>
            </ul>
<pre class="line-numbers"><code class="language-js">$('.CUSTOM-AUTOCOMPLETE-CLASS').each(function() {
    var $el = $(this);
    var slug = $el.data('slug');
    var value = $el.data('value');
    var name = $el.data('name');
    var source = $el.data('autocompleteurl');
    var hint_html = '';
    var shade_style = 'color: #CCC; width: 100%;display:none; background: transparent; z-index: 1;  box-shadow: none;border: none; top:1px; left:1px';
    hint_html += '&lt;input class="form-control autocomplete-shade" id="shade-'+slug+'" disabled="disabled" style="'+shade_style+'"/>';
    hint_html += '&lt;input type="hidden" name="'+name+'" class="autocomplete-value" value="'+value+'" id="value-'+slug+'" value=""/>';
    $el.after(hint_html);
    $el.autocomplete({
        selectFirst: true,
        autoFocus: true,
        serviceUrl: source,
        onSelect: function(suggestion) {
            var slug = $el.data('slug');
            $('#value-'+slug).val(suggestion.data);
            $('#'+slug+'-add').data('selected_value',suggestion.data);
        },
        onHint: function (hint) {
            var slug = $el.data('slug');
            $('#shade-'+slug).val(hint);
        },
        onInvalidateSelection: function() {
            console.log('invalids');
            $(this).val('');
        }
    });
});</code></pre>
        </li>
    <li class="list-group-item">
        <h3>Function for <code>ROUTE_TO_PROCESS_QUERY</code> in Backend</h3>
        <pre class="line-numbers"><code class="language-php">public function autoCompleteProcess(){
    $search_key = $_GET['query'];
    $query = "SELECT `DISPLAY_FIELD` as data_option, `VALUE_FIELD` as data_value
                FROM `SEARCHING_TABLE`
                WHERE `SEARCHING_COLUMN` LIKE '%SEARCH_KEY%'";
    return getAutocompleteData($query, $search_key);
}</code></pre>
    </li>
    </ul>
