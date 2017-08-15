<?php

/* @CoreAdminHome/trackingCodeGenerator.twig */
class __TwigTemplate_6041de3167063a725ad3ee33361e68990e3e81c8d55821a5bd79d00416f77531 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("user.twig", "@CoreAdminHome/trackingCodeGenerator.twig", 1);
        $this->blocks = array(
            'head' => array($this, 'block_head'),
            'content' => array($this, 'block_content'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "user.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 10
        ob_start();
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JavaScriptTracking")), "html", null, true);
        $context["title"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        // line 1
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_head($context, array $blocks = array())
    {
        // line 4
        echo "    ";
        $this->displayParentBlock("head", $context, $blocks);
        echo "
    <link rel=\"stylesheet\" href=\"plugins/CoreAdminHome/stylesheets/jsTrackingGenerator.css\" />
    <script type=\"text/javascript\" src=\"plugins/CoreAdminHome/javascripts/jsTrackingGenerator.js\"></script>
";
    }

    // line 12
    public function block_content($context, array $blocks = array())
    {
        // line 13
        echo "<div id=\"js-tracking-generator-data\" max-custom-variables=\"";
        echo twig_escape_filter($this->env, (isset($context["maxCustomVariables"]) ? $context["maxCustomVariables"] : $this->getContext($context, "maxCustomVariables")), "html_attr");
        echo "\" data-currencies=\"";
        echo twig_escape_filter($this->env, twig_jsonencode_filter((isset($context["currencySymbols"]) ? $context["currencySymbols"] : $this->getContext($context, "currencySymbols"))), "html", null, true);
        echo "\"></div>

<h2 piwik-enriched-headline
    feature-name=\"";
        // line 16
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_TrackingCode")), "html", null, true);
        echo "\"
    help-url=\"http://piwik.org/docs/tracking-api/\">";
        // line 17
        echo twig_escape_filter($this->env, (isset($context["title"]) ? $context["title"] : $this->getContext($context, "title")), "html", null, true);
        echo "</h2>

<div id=\"js-code-options\">

    <p>
        ";
        // line 22
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTrackingIntro1")), "html", null, true);
        echo "
        <br/><br/>
        ";
        // line 24
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTrackingIntro2")), "html", null, true);
        echo " ";
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTrackingIntro3", "<a href=\"http://piwik.org/integrate/\" rel=\"noreferrer\"  target=\"_blank\">", "</a>"));
        echo "
        <br/><br/>
        ";
        // line 26
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTrackingIntro4", "<a href=\"#image-tracking-link\">", "</a>"));
        echo "
        <br/><br/>
        ";
        // line 28
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTrackingIntro5", "<a rel=\"noreferrer\"  target=\"_blank\" href=\"http://piwik.org/docs/javascript-tracking/\">", "</a>"));
        echo "
    </p>

    <div class=\"form-group\">
        ";
        // line 33
        echo "        <label>";
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Website")), "html", null, true);
        echo "</label>

        <div piwik-siteselector
             class=\"sites_autocomplete\"
             siteid=\"";
        // line 37
        echo twig_escape_filter($this->env, (isset($context["idSite"]) ? $context["idSite"] : $this->getContext($context, "idSite")), "html", null, true);
        echo "\"
             sitename=\"";
        // line 38
        echo twig_escape_filter($this->env, (isset($context["defaultReportSiteName"]) ? $context["defaultReportSiteName"] : $this->getContext($context, "defaultReportSiteName")), "html", null, true);
        echo "\"
             show-all-sites-item=\"false\"
             switch-site-on-select=\"false\"
             id=\"js-tracker-website\"
             show-selected-site=\"true\"></div>
    </div>

    <h3>";
        // line 45
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Options")), "html", null, true);
        echo "</h3>

    <div id=\"optional-js-tracking-options\">

        ";
        // line 50
        echo "        <div class=\"form-group\">
            <div class=\"form-help\">
                ";
        // line 52
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTracking_MergeSubdomainsDesc", (("x.<span class='current-site-host'>" . (isset($context["defaultReportSiteDomain"]) ? $context["defaultReportSiteDomain"] : $this->getContext($context, "defaultReportSiteDomain"))) . "</span>"), (("y.<span class='current-site-host'>" . (isset($context["defaultReportSiteDomain"]) ? $context["defaultReportSiteDomain"] : $this->getContext($context, "defaultReportSiteDomain"))) . "</span>")));
        echo "
            </div>
            <label class=\"checkbox\">
                <input type=\"checkbox\" id=\"javascript-tracking-all-subdomains\"/>
                ";
        // line 56
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTracking_MergeSubdomains")), "html", null, true);
        echo "
                <span class='current-site-name'>";
        // line 57
        echo (isset($context["defaultReportSiteName"]) ? $context["defaultReportSiteName"] : $this->getContext($context, "defaultReportSiteName"));
        echo "</span>
            </label>
        </div>

        ";
        // line 62
        echo "        <div class=\"form-group\">
            <div class=\"form-help\">
                ";
        // line 64
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTracking_GroupPageTitlesByDomainDesc1", (("<span class='current-site-host'>" . (isset($context["defaultReportSiteDomain"]) ? $context["defaultReportSiteDomain"] : $this->getContext($context, "defaultReportSiteDomain"))) . "</span>")));
        echo "
            </div>
            <label class=\"checkbox\">
                <input type=\"checkbox\" id=\"javascript-tracking-group-by-domain\"/>
                ";
        // line 68
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTracking_GroupPageTitlesByDomain")), "html", null, true);
        echo "
            </label>
        </div>

        ";
        // line 73
        echo "        <div class=\"form-group\">
            <div class=\"form-help\">
                ";
        // line 75
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTracking_MergeAliasesDesc", (("<span class='current-site-alias'>" . (isset($context["defaultReportSiteAlias"]) ? $context["defaultReportSiteAlias"] : $this->getContext($context, "defaultReportSiteAlias"))) . "</span>")));
        echo "
            </div>
            <label class=\"checkbox\">
                <input type=\"checkbox\" checked=\"checked\" id=\"javascript-tracking-all-aliases\"/>
                ";
        // line 79
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTracking_MergeAliases")), "html", null, true);
        echo "
                <span class='current-site-name'>";
        // line 80
        echo (isset($context["defaultReportSiteName"]) ? $context["defaultReportSiteName"] : $this->getContext($context, "defaultReportSiteName"));
        echo "</span>
            </label>
        </div>

        <h3>";
        // line 84
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("Mobile_Advanced")), "html", null, true);
        echo "</h3>

        <p>
            <a href=\"#\" class=\"section-toggler-link\" data-section-id=\"javascript-advanced-options\">";
        // line 87
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Show")), "html", null, true);
        echo "</a>
        </p>

        <div id=\"javascript-advanced-options\" style=\"display:none;\">

            ";
        // line 93
        echo "            <div id=\"javascript-tracking-visitor-cv\">
                <div class=\"form-group\">
                    <div class=\"form-help\">
                        ";
        // line 96
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTracking_VisitorCustomVarsDesc")), "html", null, true);
        echo "
                    </div>
                    <label class=\"checkbox\">
                        <input class=\"section-toggler-link\" type=\"checkbox\" id=\"javascript-tracking-visitor-cv-check\" data-section-id=\"js-visitor-cv-extra\"/>
                        ";
        // line 100
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTracking_VisitorCustomVars")), "html", null, true);
        echo "
                    </label>
                </div>
                <table id=\"js-visitor-cv-extra\" style=\"display:none;\">
                    <tr>
                        <th>";
        // line 105
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Name")), "html", null, true);
        echo "</th>
                        <th>";
        // line 106
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Value")), "html", null, true);
        echo "</th>
                    </tr>
                    <tr>
                        <td><input type=\"text\" class=\"custom-variable-name\" placeholder=\"e.g. Type\"/></td>
                        <td><input type=\"text\" class=\"custom-variable-value\" placeholder=\"e.g. Customer\"/></td>
                    </tr>
                    <tr>
                        <td colspan=\"4\" style=\"text-align:right;\">
                            <a href=\"#\" class=\"add-custom-variable\">";
        // line 114
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Add")), "html", null, true);
        echo "</a>
                        </td>
                    </tr>
                </table>
            </div>

            ";
        // line 121
        echo "            <div class=\"form-group\">
                <div class=\"form-help\">
                    ";
        // line 123
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTracking_EnableDoNotTrackDesc")), "html", null, true);
        echo "
                    ";
        // line 124
        if ((isset($context["serverSideDoNotTrackEnabled"]) ? $context["serverSideDoNotTrackEnabled"] : $this->getContext($context, "serverSideDoNotTrackEnabled"))) {
            // line 125
            echo "                        <br/>
                        ";
            // line 126
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTracking_EnableDoNotTrack_AlreadyEnabled")), "html", null, true);
            echo "
                    ";
        }
        // line 128
        echo "                </div>
                <label class=\"checkbox\">
                    <input type=\"checkbox\" id=\"javascript-tracking-do-not-track\"/>
                    ";
        // line 131
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTracking_EnableDoNotTrack")), "html", null, true);
        echo "
                </label>
            </div>

            ";
        // line 136
        echo "            <div class=\"form-group\">
                <div class=\"form-help\">
                    ";
        // line 138
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTracking_DisableCookiesDesc")), "html", null, true);
        echo "
                </div>
                <label class=\"checkbox\">
                    <input type=\"checkbox\" id=\"javascript-tracking-disable-cookies\"/>
                    ";
        // line 142
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTracking_DisableCookies")), "html", null, true);
        echo "
                </label>
            </div>

            ";
        // line 147
        echo "            <div class=\"form-group\">
                <div class=\"form-help\">
                    ";
        // line 149
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTracking_CustomCampaignQueryParamDesc", "<a href=\"http://piwik.org/faq/general/#faq_119\" rel=\"noreferrer\"  target=\"_blank\">", "</a>"));
        echo "
                </div>
                <label class=\"checkbox\">
                    <input class=\"section-toggler-link\" type=\"checkbox\"
                           id=\"custom-campaign-query-params-check\"
                           data-section-id=\"js-campaign-query-param-extra\"/>
                    ";
        // line 155
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTracking_CustomCampaignQueryParam")), "html", null, true);
        echo "
                </label>
            </div>
            <div style=\"display:none;\" id=\"js-campaign-query-param-extra\">
                <div class=\"form-group\">
                    <label>";
        // line 160
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTracking_CampaignNameParam")), "html", null, true);
        echo "</label>
                    <input type=\"text\" id=\"custom-campaign-name-query-param\"/>
                </div>
                <div class=\"form-group\">
                    <label>";
        // line 164
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTracking_CampaignKwdParam")), "html", null, true);
        echo "</label>
                    <input type=\"text\" id=\"custom-campaign-keyword-query-param\"/>
                </div>
            </div>

        </div>

    </div>

</div>

<div id=\"javascript-output-section\">
    <h3>";
        // line 176
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_JsTrackingTag")), "html", null, true);
        echo "</h3>

    <p>";
        // line 178
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_JSTracking_CodeNoteBeforeClosingHead", "&lt;/head&gt;"));
        echo "</p>

    <div id=\"javascript-text\">
        <textarea class=\"codeblock\"> </textarea>
    </div>
</div>

<h2 id=\"image-tracking-link\">";
        // line 185
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_ImageTracking")), "html", null, true);
        echo "</h2>

<div id=\"image-tracking-code-options\">

    <p>
        ";
        // line 190
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_ImageTrackingIntro1")), "html", null, true);
        echo " ";
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_ImageTrackingIntro2", "<em>&lt;noscript&gt;&lt;/noscript&gt;</em>"));
        echo "
    </p>
    <p>
        ";
        // line 193
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_ImageTrackingIntro3", "<a href=\"http://piwik.org/docs/tracking-api/reference/\" rel=\"noreferrer\"  target=\"_blank\">", "</a>"));
        echo "
    </p>

    ";
        // line 197
        echo "    <div class=\"form-group\">
        <label>";
        // line 198
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Website")), "html", null, true);
        echo "</label>
        <div piwik-siteselector
             class=\"sites_autocomplete\"
             siteid=\"";
        // line 201
        echo twig_escape_filter($this->env, (isset($context["idSite"]) ? $context["idSite"] : $this->getContext($context, "idSite")), "html", null, true);
        echo "\"
             sitename=\"";
        // line 202
        echo twig_escape_filter($this->env, (isset($context["defaultReportSiteName"]) ? $context["defaultReportSiteName"] : $this->getContext($context, "defaultReportSiteName")), "html", null, true);
        echo "\"
             id=\"image-tracker-website\"
             show-all-sites-item=\"false\"
             switch-site-on-select=\"false\"
             show-selected-site=\"true\"></div>
    </div>

    <h3>";
        // line 209
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Options")), "html", null, true);
        echo "</h3>

    <div id=\"image-tracking-section\">

        ";
        // line 214
        echo "        <div class=\"form-group\">
            <label for=\"image-tracker-action-name\">";
        // line 215
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("Actions_ColumnPageName")), "html", null, true);
        echo "</label>
            <input type=\"text\" id=\"image-tracker-action-name\"/>
        </div>

        ";
        // line 220
        echo "        <div class=\"form-group\">
            <label class=\"checkbox\">
                <input class=\"section-toggler-link\" type=\"checkbox\" id=\"image-tracking-goal-check\" data-section-id=\"image-goal-picker-extra\"/>
                ";
        // line 223
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_TrackAGoal")), "html", null, true);
        echo "
            </label>
        </div>
        <div class=\"form-group\" style=\"display:none;\" id=\"image-goal-picker-extra\">
            <select id=\"image-tracker-goal\">
                <option value=\"\">";
        // line 228
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("UserCountryMap_None")), "html", null, true);
        echo "</option>
            </select>
            <span>";
        // line 230
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_WithOptionalRevenue")), "html", null, true);
        echo "</span>
            <div class=\"input-group\">
                <input type=\"text\" class=\"revenue\" value=\"\"/>
                <span class=\"input-group-addon\">";
        // line 233
        echo twig_escape_filter($this->env, (isset($context["defaultSiteRevenue"]) ? $context["defaultSiteRevenue"] : $this->getContext($context, "defaultSiteRevenue")), "html", null, true);
        echo "</span>
            </div>
        </div>

    </div>

    <div id=\"image-link-output-section\">
        <h3>";
        // line 240
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_ImageTrackingLink")), "html", null, true);
        echo "</h3>

        <div id=\"image-tracking-text\">
            <textarea class=\"codeblock\"> </textarea>
        </div>
    </div>

</div>

<h2>";
        // line 249
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_ImportingServerLogs")), "html", null, true);
        echo "</h2>

<p>
    ";
        // line 252
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreAdminHome_ImportingServerLogsDesc", "<a href=\"http://piwik.org/log-analytics/\" rel=\"noreferrer\"  target=\"_blank\">", "</a>"));
        echo "
</p>

";
    }

    public function getTemplateName()
    {
        return "@CoreAdminHome/trackingCodeGenerator.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  463 => 252,  457 => 249,  445 => 240,  435 => 233,  429 => 230,  424 => 228,  416 => 223,  411 => 220,  404 => 215,  401 => 214,  394 => 209,  384 => 202,  380 => 201,  374 => 198,  371 => 197,  365 => 193,  357 => 190,  349 => 185,  339 => 178,  334 => 176,  319 => 164,  312 => 160,  304 => 155,  295 => 149,  291 => 147,  284 => 142,  277 => 138,  273 => 136,  266 => 131,  261 => 128,  256 => 126,  253 => 125,  251 => 124,  247 => 123,  243 => 121,  234 => 114,  223 => 106,  219 => 105,  211 => 100,  204 => 96,  199 => 93,  191 => 87,  185 => 84,  178 => 80,  174 => 79,  167 => 75,  163 => 73,  156 => 68,  149 => 64,  145 => 62,  138 => 57,  134 => 56,  127 => 52,  123 => 50,  116 => 45,  106 => 38,  102 => 37,  94 => 33,  87 => 28,  82 => 26,  75 => 24,  70 => 22,  62 => 17,  58 => 16,  49 => 13,  46 => 12,  37 => 4,  34 => 3,  30 => 1,  26 => 10,  11 => 1,);
    }
}
/* {% extends 'user.twig' %}*/
/* */
/* {% block head %}*/
/*     {{ parent() }}*/
/*     <link rel="stylesheet" href="plugins/CoreAdminHome/stylesheets/jsTrackingGenerator.css" />*/
/*     <script type="text/javascript" src="plugins/CoreAdminHome/javascripts/jsTrackingGenerator.js"></script>*/
/* {% endblock %}*/
/* */
/* */
/* {% set title %}{{ 'CoreAdminHome_JavaScriptTracking'|translate }}{% endset %}*/
/* */
/* {% block content %}*/
/* <div id="js-tracking-generator-data" max-custom-variables="{{ maxCustomVariables|e('html_attr') }}" data-currencies="{{ currencySymbols|json_encode }}"></div>*/
/* */
/* <h2 piwik-enriched-headline*/
/*     feature-name="{{ 'CoreAdminHome_TrackingCode'|translate }}"*/
/*     help-url="http://piwik.org/docs/tracking-api/">{{ title }}</h2>*/
/* */
/* <div id="js-code-options">*/
/* */
/*     <p>*/
/*         {{ 'CoreAdminHome_JSTrackingIntro1'|translate }}*/
/*         <br/><br/>*/
/*         {{ 'CoreAdminHome_JSTrackingIntro2'|translate }} {{ 'CoreAdminHome_JSTrackingIntro3'|translate('<a href="http://piwik.org/integrate/" rel="noreferrer"  target="_blank">','</a>')|raw }}*/
/*         <br/><br/>*/
/*         {{ 'CoreAdminHome_JSTrackingIntro4'|translate('<a href="#image-tracking-link">','</a>')|raw }}*/
/*         <br/><br/>*/
/*         {{ 'CoreAdminHome_JSTrackingIntro5'|translate('<a rel="noreferrer"  target="_blank" href="http://piwik.org/docs/javascript-tracking/">','</a>')|raw }}*/
/*     </p>*/
/* */
/*     <div class="form-group">*/
/*         {# website #}*/
/*         <label>{{ 'General_Website'|translate }}</label>*/
/* */
/*         <div piwik-siteselector*/
/*              class="sites_autocomplete"*/
/*              siteid="{{ idSite }}"*/
/*              sitename="{{ defaultReportSiteName }}"*/
/*              show-all-sites-item="false"*/
/*              switch-site-on-select="false"*/
/*              id="js-tracker-website"*/
/*              show-selected-site="true"></div>*/
/*     </div>*/
/* */
/*     <h3>{{ 'General_Options'|translate }}</h3>*/
/* */
/*     <div id="optional-js-tracking-options">*/
/* */
/*         {# track across all subdomains #}*/
/*         <div class="form-group">*/
/*             <div class="form-help">*/
/*                 {{ 'CoreAdminHome_JSTracking_MergeSubdomainsDesc'|translate("x.<span class='current-site-host'>"~defaultReportSiteDomain~"</span>","y.<span class='current-site-host'>"~defaultReportSiteDomain~"</span>")|raw }}*/
/*             </div>*/
/*             <label class="checkbox">*/
/*                 <input type="checkbox" id="javascript-tracking-all-subdomains"/>*/
/*                 {{ 'CoreAdminHome_JSTracking_MergeSubdomains'|translate }}*/
/*                 <span class='current-site-name'>{{ defaultReportSiteName|raw }}</span>*/
/*             </label>*/
/*         </div>*/
/* */
/*         {# group page titles by site domain #}*/
/*         <div class="form-group">*/
/*             <div class="form-help">*/
/*                 {{ 'CoreAdminHome_JSTracking_GroupPageTitlesByDomainDesc1'|translate("<span class='current-site-host'>" ~ defaultReportSiteDomain ~ "</span>")|raw }}*/
/*             </div>*/
/*             <label class="checkbox">*/
/*                 <input type="checkbox" id="javascript-tracking-group-by-domain"/>*/
/*                 {{ 'CoreAdminHome_JSTracking_GroupPageTitlesByDomain'|translate }}*/
/*             </label>*/
/*         </div>*/
/* */
/*         {# track across all site aliases #}*/
/*         <div class="form-group">*/
/*             <div class="form-help">*/
/*                 {{ 'CoreAdminHome_JSTracking_MergeAliasesDesc'|translate("<span class='current-site-alias'>"~defaultReportSiteAlias~"</span>")|raw }}*/
/*             </div>*/
/*             <label class="checkbox">*/
/*                 <input type="checkbox" checked="checked" id="javascript-tracking-all-aliases"/>*/
/*                 {{ 'CoreAdminHome_JSTracking_MergeAliases'|translate }}*/
/*                 <span class='current-site-name'>{{ defaultReportSiteName|raw }}</span>*/
/*             </label>*/
/*         </div>*/
/* */
/*         <h3>{{ 'Mobile_Advanced'|translate }}</h3>*/
/* */
/*         <p>*/
/*             <a href="#" class="section-toggler-link" data-section-id="javascript-advanced-options">{{ 'General_Show'|translate }}</a>*/
/*         </p>*/
/* */
/*         <div id="javascript-advanced-options" style="display:none;">*/
/* */
/*             {# visitor custom variable #}*/
/*             <div id="javascript-tracking-visitor-cv">*/
/*                 <div class="form-group">*/
/*                     <div class="form-help">*/
/*                         {{ 'CoreAdminHome_JSTracking_VisitorCustomVarsDesc'|translate }}*/
/*                     </div>*/
/*                     <label class="checkbox">*/
/*                         <input class="section-toggler-link" type="checkbox" id="javascript-tracking-visitor-cv-check" data-section-id="js-visitor-cv-extra"/>*/
/*                         {{ 'CoreAdminHome_JSTracking_VisitorCustomVars'|translate }}*/
/*                     </label>*/
/*                 </div>*/
/*                 <table id="js-visitor-cv-extra" style="display:none;">*/
/*                     <tr>*/
/*                         <th>{{ 'General_Name'|translate }}</th>*/
/*                         <th>{{ 'General_Value'|translate }}</th>*/
/*                     </tr>*/
/*                     <tr>*/
/*                         <td><input type="text" class="custom-variable-name" placeholder="e.g. Type"/></td>*/
/*                         <td><input type="text" class="custom-variable-value" placeholder="e.g. Customer"/></td>*/
/*                     </tr>*/
/*                     <tr>*/
/*                         <td colspan="4" style="text-align:right;">*/
/*                             <a href="#" class="add-custom-variable">{{ 'General_Add'|translate }}</a>*/
/*                         </td>*/
/*                     </tr>*/
/*                 </table>*/
/*             </div>*/
/* */
/*             {# do not track support #}*/
/*             <div class="form-group">*/
/*                 <div class="form-help">*/
/*                     {{ 'CoreAdminHome_JSTracking_EnableDoNotTrackDesc'|translate }}*/
/*                     {% if serverSideDoNotTrackEnabled %}*/
/*                         <br/>*/
/*                         {{ 'CoreAdminHome_JSTracking_EnableDoNotTrack_AlreadyEnabled'|translate }}*/
/*                     {% endif %}*/
/*                 </div>*/
/*                 <label class="checkbox">*/
/*                     <input type="checkbox" id="javascript-tracking-do-not-track"/>*/
/*                     {{ 'CoreAdminHome_JSTracking_EnableDoNotTrack'|translate }}*/
/*                 </label>*/
/*             </div>*/
/* */
/*             {# disable all cookies options #}*/
/*             <div class="form-group">*/
/*                 <div class="form-help">*/
/*                     {{ 'CoreAdminHome_JSTracking_DisableCookiesDesc'|translate }}*/
/*                 </div>*/
/*                 <label class="checkbox">*/
/*                     <input type="checkbox" id="javascript-tracking-disable-cookies"/>*/
/*                     {{ 'CoreAdminHome_JSTracking_DisableCookies'|translate }}*/
/*                 </label>*/
/*             </div>*/
/* */
/*             {# custom campaign name/keyword query params #}*/
/*             <div class="form-group">*/
/*                 <div class="form-help">*/
/*                     {{ 'CoreAdminHome_JSTracking_CustomCampaignQueryParamDesc'|translate('<a href="http://piwik.org/faq/general/#faq_119" rel="noreferrer"  target="_blank">','</a>')|raw }}*/
/*                 </div>*/
/*                 <label class="checkbox">*/
/*                     <input class="section-toggler-link" type="checkbox"*/
/*                            id="custom-campaign-query-params-check"*/
/*                            data-section-id="js-campaign-query-param-extra"/>*/
/*                     {{ 'CoreAdminHome_JSTracking_CustomCampaignQueryParam'|translate }}*/
/*                 </label>*/
/*             </div>*/
/*             <div style="display:none;" id="js-campaign-query-param-extra">*/
/*                 <div class="form-group">*/
/*                     <label>{{ 'CoreAdminHome_JSTracking_CampaignNameParam'|translate }}</label>*/
/*                     <input type="text" id="custom-campaign-name-query-param"/>*/
/*                 </div>*/
/*                 <div class="form-group">*/
/*                     <label>{{ 'CoreAdminHome_JSTracking_CampaignKwdParam'|translate }}</label>*/
/*                     <input type="text" id="custom-campaign-keyword-query-param"/>*/
/*                 </div>*/
/*             </div>*/
/* */
/*         </div>*/
/* */
/*     </div>*/
/* */
/* </div>*/
/* */
/* <div id="javascript-output-section">*/
/*     <h3>{{ 'General_JsTrackingTag'|translate }}</h3>*/
/* */
/*     <p>{{ 'CoreAdminHome_JSTracking_CodeNoteBeforeClosingHead'|translate("&lt;/head&gt;")|raw }}</p>*/
/* */
/*     <div id="javascript-text">*/
/*         <textarea class="codeblock"> </textarea>*/
/*     </div>*/
/* </div>*/
/* */
/* <h2 id="image-tracking-link">{{ 'CoreAdminHome_ImageTracking'|translate }}</h2>*/
/* */
/* <div id="image-tracking-code-options">*/
/* */
/*     <p>*/
/*         {{ 'CoreAdminHome_ImageTrackingIntro1'|translate }} {{ 'CoreAdminHome_ImageTrackingIntro2'|translate("<em>&lt;noscript&gt;&lt;/noscript&gt;</em>")|raw }}*/
/*     </p>*/
/*     <p>*/
/*         {{ 'CoreAdminHome_ImageTrackingIntro3'|translate('<a href="http://piwik.org/docs/tracking-api/reference/" rel="noreferrer"  target="_blank">','</a>')|raw }}*/
/*     </p>*/
/* */
/*     {# website #}*/
/*     <div class="form-group">*/
/*         <label>{{ 'General_Website'|translate }}</label>*/
/*         <div piwik-siteselector*/
/*              class="sites_autocomplete"*/
/*              siteid="{{ idSite }}"*/
/*              sitename="{{ defaultReportSiteName }}"*/
/*              id="image-tracker-website"*/
/*              show-all-sites-item="false"*/
/*              switch-site-on-select="false"*/
/*              show-selected-site="true"></div>*/
/*     </div>*/
/* */
/*     <h3>{{ 'General_Options'|translate }}</h3>*/
/* */
/*     <div id="image-tracking-section">*/
/* */
/*         {# action_name #}*/
/*         <div class="form-group">*/
/*             <label for="image-tracker-action-name">{{ 'Actions_ColumnPageName'|translate }}</label>*/
/*             <input type="text" id="image-tracker-action-name"/>*/
/*         </div>*/
/* */
/*         {# goal #}*/
/*         <div class="form-group">*/
/*             <label class="checkbox">*/
/*                 <input class="section-toggler-link" type="checkbox" id="image-tracking-goal-check" data-section-id="image-goal-picker-extra"/>*/
/*                 {{ 'CoreAdminHome_TrackAGoal'|translate }}*/
/*             </label>*/
/*         </div>*/
/*         <div class="form-group" style="display:none;" id="image-goal-picker-extra">*/
/*             <select id="image-tracker-goal">*/
/*                 <option value="">{{ 'UserCountryMap_None'|translate }}</option>*/
/*             </select>*/
/*             <span>{{ 'CoreAdminHome_WithOptionalRevenue'|translate }}</span>*/
/*             <div class="input-group">*/
/*                 <input type="text" class="revenue" value=""/>*/
/*                 <span class="input-group-addon">{{ defaultSiteRevenue }}</span>*/
/*             </div>*/
/*         </div>*/
/* */
/*     </div>*/
/* */
/*     <div id="image-link-output-section">*/
/*         <h3>{{ 'CoreAdminHome_ImageTrackingLink'|translate }}</h3>*/
/* */
/*         <div id="image-tracking-text">*/
/*             <textarea class="codeblock"> </textarea>*/
/*         </div>*/
/*     </div>*/
/* */
/* </div>*/
/* */
/* <h2>{{ 'CoreAdminHome_ImportingServerLogs'|translate }}</h2>*/
/* */
/* <p>*/
/*     {{ 'CoreAdminHome_ImportingServerLogsDesc'|translate('<a href="http://piwik.org/log-analytics/" rel="noreferrer"  target="_blank">','</a>')|raw }}*/
/* </p>*/
/* */
/* {% endblock %}*/
/* */
