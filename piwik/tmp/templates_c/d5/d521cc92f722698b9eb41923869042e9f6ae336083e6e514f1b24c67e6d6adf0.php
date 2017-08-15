<?php

/* @UsersManager/userSettings.twig */
class __TwigTemplate_f2dad8fafa61791d513fffe2f09717658d43ab02b96804b78745065d438deff7 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("user.twig", "@UsersManager/userSettings.twig", 1);
        $this->blocks = array(
            'content' => array($this, 'block_content'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "user.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 3
        ob_start();
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("UsersManager_PersonalSettings")), "html", null, true);
        $context["title"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        // line 1
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 5
    public function block_content($context, array $blocks = array())
    {
        // line 6
        echo "
<h2 piwik-enriched-headline>";
        // line 7
        echo twig_escape_filter($this->env, (isset($context["title"]) ? $context["title"] : $this->getContext($context, "title")), "html", null, true);
        echo "</h2>

<div class=\"ui-confirm\" id=\"confirmPasswordChange\">
    <h2>";
        // line 10
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("UsersManager_ChangePasswordConfirm")), "html", null, true);
        echo "</h2>
    <input role=\"yes\" type=\"button\" value=\"";
        // line 11
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Yes")), "html", null, true);
        echo "\"/>
    <input role=\"no\" type=\"button\" value=\"";
        // line 12
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_No")), "html", null, true);
        echo "\"/>
</div>

<form id=\"userSettingsTable\">

    <div class=\"form-group\">
        <label for=\"username\">";
        // line 18
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Username")), "html", null, true);
        echo "</label>
        <div class=\"form-help\">";
        // line 19
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("UsersManager_YourUsernameCannotBeChanged")), "html", null, true);
        echo "</div>
        <input value=\"";
        // line 20
        echo twig_escape_filter($this->env, (isset($context["userLogin"]) ? $context["userLogin"] : $this->getContext($context, "userLogin")), "html", null, true);
        echo "\" id=\"username\" disabled=\"disabled\"/>
    </div>

    <div class=\"form-group\">
        <label for=\"alias\">";
        // line 24
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("UsersManager_Alias")), "html", null, true);
        echo "</label>
        <input value=\"";
        // line 25
        echo twig_escape_filter($this->env, (isset($context["userAlias"]) ? $context["userAlias"] : $this->getContext($context, "userAlias")), "html", null, true);
        echo "\" id=\"alias\" />
    </div>

    <div class=\"form-group\">
        <label for=\"email\">";
        // line 29
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("UsersManager_Email")), "html", null, true);
        echo "</label>
        <input value=\"";
        // line 30
        echo twig_escape_filter($this->env, (isset($context["userEmail"]) ? $context["userEmail"] : $this->getContext($context, "userEmail")), "html", null, true);
        echo "\" id=\"email\"/>
    </div>

    <div class=\"form-group\">
        <label for=\"language\">";
        // line 34
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Language")), "html", null, true);
        echo "</label>
        <div class=\"form-help\">
            <a href=\"?module=Proxy&amp;action=redirect&amp;url=http://piwik.org/translations/\" target=\"_blank\">
                ";
        // line 37
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("LanguagesManager_AboutPiwikTranslations")), "html", null, true);
        echo "</a>
        </div>
        <select name=\"language\" id=\"language\">
            ";
        // line 40
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["languages"]) ? $context["languages"] : $this->getContext($context, "languages")));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 41
            echo "                <option value=\"";
            echo twig_escape_filter($this->env, $this->getAttribute($context["language"], "code", array()), "html", null, true);
            echo "\" ";
            if (($this->getAttribute($context["language"], "code", array()) == (isset($context["currentLanguageCode"]) ? $context["currentLanguageCode"] : $this->getContext($context, "currentLanguageCode")))) {
                echo "selected=\"selected\"";
            }
            // line 42
            echo "                        title=\"";
            echo twig_escape_filter($this->env, $this->getAttribute($context["language"], "name", array()), "html", null, true);
            echo " (";
            echo twig_escape_filter($this->env, $this->getAttribute($context["language"], "english_name", array()), "html", null, true);
            echo ")\">";
            echo twig_escape_filter($this->env, $this->getAttribute($context["language"], "name", array()), "html", null, true);
            echo "</option>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 44
        echo "        </select>
    </div>

    <div class=\"form-group\">
        <label for=\"timeformat\">";
        // line 48
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_TimeFormat")), "html", null, true);
        echo "</label>
        <select name=\"timeformat\" id=\"timeformat\">
            <option value=\"1\" ";
        // line 50
        if (((isset($context["currentTimeformat"]) ? $context["currentTimeformat"] : $this->getContext($context, "currentTimeformat")) == 1)) {
            echo "selected=\"selected\"";
        }
        echo " title=\"";
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_12HourClock")), "html", null, true);
        echo "\">";
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_12HourClock")), "html", null, true);
        echo "</option>
            <option value=\"0\" ";
        // line 51
        if (((isset($context["currentTimeformat"]) ? $context["currentTimeformat"] : $this->getContext($context, "currentTimeformat")) == 0)) {
            echo "selected=\"selected\"";
        }
        echo " title=\"";
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_24HourClock")), "html", null, true);
        echo "\">";
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_24HourClock")), "html", null, true);
        echo "</option>
        </select>
    </div>

    <div class=\"form-group\">
        <label>";
        // line 56
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("UsersManager_ReportToLoadByDefault")), "html", null, true);
        echo "</label>
        <label class=\"radio\">
            <input id=\"defaultReportRadioAll\" type=\"radio\" value=\"MultiSites\"
                   name=\"defaultReport\"";
        // line 59
        if (((isset($context["defaultReport"]) ? $context["defaultReport"] : $this->getContext($context, "defaultReport")) == "MultiSites")) {
            echo " checked=\"checked\"";
        }
        echo " />
            ";
        // line 60
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_AllWebsitesDashboard")), "html", null, true);
        echo "
        </label>
        <label class=\"radio\">
            <input id=\"defaultReportSpecific\" type=\"radio\" value=\"1\"
                   name=\"defaultReport\"";
        // line 64
        if (((isset($context["defaultReport"]) ? $context["defaultReport"] : $this->getContext($context, "defaultReport")) != "MultiSites")) {
            echo " checked=\"checked\"";
        }
        echo " />
            ";
        // line 65
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_DashboardForASpecificWebsite")), "html", null, true);
        echo "
        </label>
        <div piwik-siteselector
             show-selected-site=\"true\"
             class=\"sites_autocomplete\"
             siteid=\"";
        // line 70
        echo twig_escape_filter($this->env, (isset($context["defaultReportIdSite"]) ? $context["defaultReportIdSite"] : $this->getContext($context, "defaultReportIdSite")), "html", null, true);
        echo "\"
             sitename=\"";
        // line 71
        echo twig_escape_filter($this->env, (isset($context["defaultReportSiteName"]) ? $context["defaultReportSiteName"] : $this->getContext($context, "defaultReportSiteName")), "html", null, true);
        echo "\"
             switch-site-on-select=\"false\"
             show-all-sites-item=\"false\"
             showselectedsite=\"true\"
             id=\"defaultReportSiteSelector\"
             ></div>
    </div>

    <div class=\"form-group\">
        <label>";
        // line 80
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("UsersManager_ReportDateToLoadByDefault")), "html", null, true);
        echo "</label>
        ";
        // line 81
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["availableDefaultDates"]) ? $context["availableDefaultDates"] : $this->getContext($context, "availableDefaultDates")));
        $context['loop'] = array(
          'parent' => $context['_parent'],
          'index0' => 0,
          'index'  => 1,
          'first'  => true,
        );
        if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
            $length = count($context['_seq']);
            $context['loop']['revindex0'] = $length - 1;
            $context['loop']['revindex'] = $length;
            $context['loop']['length'] = $length;
            $context['loop']['last'] = 1 === $length;
        }
        foreach ($context['_seq'] as $context["value"] => $context["description"]) {
            // line 82
            echo "            <label class=\"radio\">
                <input id=\"defaultDate-";
            // line 83
            echo twig_escape_filter($this->env, $this->getAttribute($context["loop"], "index", array()), "html", null, true);
            echo "\" type=\"radio\"";
            if (((isset($context["defaultDate"]) ? $context["defaultDate"] : $this->getContext($context, "defaultDate")) == $context["value"])) {
                echo " checked=\"checked\"";
            }
            echo " value=\"";
            echo twig_escape_filter($this->env, $context["value"], "html", null, true);
            echo "\" name=\"defaultDate\"/>
                ";
            // line 84
            echo twig_escape_filter($this->env, $context["description"], "html", null, true);
            echo "
            </label>
        ";
            ++$context['loop']['index0'];
            ++$context['loop']['index'];
            $context['loop']['first'] = false;
            if (isset($context['loop']['length'])) {
                --$context['loop']['revindex0'];
                --$context['loop']['revindex'];
                $context['loop']['last'] = 0 === $context['loop']['revindex0'];
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['value'], $context['description'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 87
        echo "    </div>

    ";
        // line 89
        if ((array_key_exists("isValidHost", $context) && (isset($context["isValidHost"]) ? $context["isValidHost"] : $this->getContext($context, "isValidHost")))) {
            // line 90
            echo "        <div class=\"form-group\">
            <label for=\"password\">";
            // line 91
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_ChangePassword")), "html", null, true);
            echo "</label>
            <div class=\"form-help\">
                ";
            // line 93
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("UsersManager_IfYouWouldLikeToChangeThePasswordTypeANewOne")), "html", null, true);
            echo "
            </div>
            <input value=\"\" autocomplete=\"off\" id=\"password\" type=\"password\"/>
        </div>
        <div class=\"form-group\">
            <div class=\"form-help\">
                ";
            // line 99
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("UsersManager_TypeYourPasswordAgain")), "html", null, true);
            echo "
            </div>
            <input value=\"\" autocomplete=\"off\" id=\"passwordBis\" type=\"password\"/>
        </div>
    ";
        }
        // line 104
        echo "
    ";
        // line 105
        if (( !array_key_exists("isValidHost", $context) ||  !(isset($context["isValidHost"]) ? $context["isValidHost"] : $this->getContext($context, "isValidHost")))) {
            // line 106
            echo "        <div class=\"alert alert-danger\">
            ";
            // line 107
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("UsersManager_InjectedHostCannotChangePwd", (isset($context["invalidHost"]) ? $context["invalidHost"] : $this->getContext($context, "invalidHost")))), "html", null, true);
            echo "
            ";
            // line 108
            if ( !(isset($context["isSuperUser"]) ? $context["isSuperUser"] : $this->getContext($context, "isSuperUser"))) {
                echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("UsersManager_EmailYourAdministrator", (isset($context["invalidHostMailLinkStart"]) ? $context["invalidHostMailLinkStart"] : $this->getContext($context, "invalidHostMailLinkStart")), "</a>"));
            }
            // line 109
            echo "        </div>
    ";
        }
        // line 111
        echo "
    ";
        // line 112
        $context["ajax"] = $this->loadTemplate("ajaxMacros.twig", "@UsersManager/userSettings.twig", 112);
        // line 113
        echo "    ";
        echo $context["ajax"]->geterrorDiv("ajaxErrorUserSettings");
        echo "
    ";
        // line 114
        echo $context["ajax"]->getloadingDiv("ajaxLoadingUserSettings");
        echo "

    <button type=\"button\" id=\"userSettingsSubmit\">";
        // line 116
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Save")), "html", null, true);
        echo "</button>

</form>

<h2 id=\"excludeCookie\">";
        // line 120
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("UsersManager_ExcludeVisitsViaCookie")), "html", null, true);
        echo "</h2>
<p>
    ";
        // line 122
        if ((isset($context["ignoreCookieSet"]) ? $context["ignoreCookieSet"] : $this->getContext($context, "ignoreCookieSet"))) {
            // line 123
            echo "       ";
            echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("UsersManager_YourVisitsAreIgnoredOnDomain", "<strong>", (isset($context["piwikHost"]) ? $context["piwikHost"] : $this->getContext($context, "piwikHost")), "</strong>"));
            echo "
    ";
        } else {
            // line 125
            echo "       ";
            echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("UsersManager_YourVisitsAreNotIgnored", "<strong>", "</strong>"));
            echo "
    ";
        }
        // line 127
        echo "</p>
<span style=\"margin-left:20px;\">
<a href='";
        // line 129
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('linkTo')->getCallable(), array(array("ignoreSalt" => (isset($context["ignoreSalt"]) ? $context["ignoreSalt"] : $this->getContext($context, "ignoreSalt")), "action" => "setIgnoreCookie"))), "html", null, true);
        echo "#excludeCookie'>&rsaquo; ";
        if ((isset($context["ignoreCookieSet"]) ? $context["ignoreCookieSet"] : $this->getContext($context, "ignoreCookieSet"))) {
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("UsersManager_ClickHereToDeleteTheCookie")), "html", null, true);
            echo "
    ";
        } else {
            // line 130
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("UsersManager_ClickHereToSetTheCookieOnDomain", (isset($context["piwikHost"]) ? $context["piwikHost"] : $this->getContext($context, "piwikHost")))), "html", null, true);
        }
        // line 131
        echo "    <br/>
</a></span>

";
    }

    public function getTemplateName()
    {
        return "@UsersManager/userSettings.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  377 => 131,  374 => 130,  366 => 129,  362 => 127,  356 => 125,  350 => 123,  348 => 122,  343 => 120,  336 => 116,  331 => 114,  326 => 113,  324 => 112,  321 => 111,  317 => 109,  313 => 108,  309 => 107,  306 => 106,  304 => 105,  301 => 104,  293 => 99,  284 => 93,  279 => 91,  276 => 90,  274 => 89,  270 => 87,  253 => 84,  243 => 83,  240 => 82,  223 => 81,  219 => 80,  207 => 71,  203 => 70,  195 => 65,  189 => 64,  182 => 60,  176 => 59,  170 => 56,  156 => 51,  146 => 50,  141 => 48,  135 => 44,  122 => 42,  115 => 41,  111 => 40,  105 => 37,  99 => 34,  92 => 30,  88 => 29,  81 => 25,  77 => 24,  70 => 20,  66 => 19,  62 => 18,  53 => 12,  49 => 11,  45 => 10,  39 => 7,  36 => 6,  33 => 5,  29 => 1,  25 => 3,  11 => 1,);
    }
}
/* {% extends 'user.twig' %}*/
/* */
/* {% set title %}{{ 'UsersManager_PersonalSettings'|translate }}{% endset %}*/
/* */
/* {% block content %}*/
/* */
/* <h2 piwik-enriched-headline>{{ title }}</h2>*/
/* */
/* <div class="ui-confirm" id="confirmPasswordChange">*/
/*     <h2>{{ 'UsersManager_ChangePasswordConfirm'|translate }}</h2>*/
/*     <input role="yes" type="button" value="{{ 'General_Yes'|translate }}"/>*/
/*     <input role="no" type="button" value="{{ 'General_No'|translate }}"/>*/
/* </div>*/
/* */
/* <form id="userSettingsTable">*/
/* */
/*     <div class="form-group">*/
/*         <label for="username">{{ 'General_Username'|translate }}</label>*/
/*         <div class="form-help">{{ 'UsersManager_YourUsernameCannotBeChanged'|translate }}</div>*/
/*         <input value="{{ userLogin }}" id="username" disabled="disabled"/>*/
/*     </div>*/
/* */
/*     <div class="form-group">*/
/*         <label for="alias">{{ 'UsersManager_Alias'|translate }}</label>*/
/*         <input value="{{ userAlias }}" id="alias" />*/
/*     </div>*/
/* */
/*     <div class="form-group">*/
/*         <label for="email">{{ 'UsersManager_Email'|translate }}</label>*/
/*         <input value="{{ userEmail }}" id="email"/>*/
/*     </div>*/
/* */
/*     <div class="form-group">*/
/*         <label for="language">{{ 'General_Language'|translate }}</label>*/
/*         <div class="form-help">*/
/*             <a href="?module=Proxy&amp;action=redirect&amp;url=http://piwik.org/translations/" target="_blank">*/
/*                 {{ 'LanguagesManager_AboutPiwikTranslations'|translate }}</a>*/
/*         </div>*/
/*         <select name="language" id="language">*/
/*             {% for language in languages %}*/
/*                 <option value="{{ language.code }}" {% if language.code == currentLanguageCode %}selected="selected"{% endif %}*/
/*                         title="{{ language.name }} ({{ language.english_name }})">{{ language.name }}</option>*/
/*             {% endfor %}*/
/*         </select>*/
/*     </div>*/
/* */
/*     <div class="form-group">*/
/*         <label for="timeformat">{{ 'General_TimeFormat'|translate }}</label>*/
/*         <select name="timeformat" id="timeformat">*/
/*             <option value="1" {% if currentTimeformat == 1 %}selected="selected"{% endif %} title="{{ 'General_12HourClock'|translate }}">{{ 'General_12HourClock'|translate }}</option>*/
/*             <option value="0" {% if currentTimeformat == 0 %}selected="selected"{% endif %} title="{{ 'General_24HourClock'|translate }}">{{ 'General_24HourClock'|translate }}</option>*/
/*         </select>*/
/*     </div>*/
/* */
/*     <div class="form-group">*/
/*         <label>{{ 'UsersManager_ReportToLoadByDefault'|translate }}</label>*/
/*         <label class="radio">*/
/*             <input id="defaultReportRadioAll" type="radio" value="MultiSites"*/
/*                    name="defaultReport"{% if defaultReport=='MultiSites' %} checked="checked"{% endif %} />*/
/*             {{ 'General_AllWebsitesDashboard'|translate }}*/
/*         </label>*/
/*         <label class="radio">*/
/*             <input id="defaultReportSpecific" type="radio" value="1"*/
/*                    name="defaultReport"{% if defaultReport != 'MultiSites' %} checked="checked"{% endif %} />*/
/*             {{ 'General_DashboardForASpecificWebsite'|translate }}*/
/*         </label>*/
/*         <div piwik-siteselector*/
/*              show-selected-site="true"*/
/*              class="sites_autocomplete"*/
/*              siteid="{{ defaultReportIdSite }}"*/
/*              sitename="{{ defaultReportSiteName }}"*/
/*              switch-site-on-select="false"*/
/*              show-all-sites-item="false"*/
/*              showselectedsite="true"*/
/*              id="defaultReportSiteSelector"*/
/*              ></div>*/
/*     </div>*/
/* */
/*     <div class="form-group">*/
/*         <label>{{ 'UsersManager_ReportDateToLoadByDefault'|translate }}</label>*/
/*         {% for value,description in availableDefaultDates %}*/
/*             <label class="radio">*/
/*                 <input id="defaultDate-{{ loop.index }}" type="radio"{% if defaultDate==value %} checked="checked"{% endif %} value="{{ value }}" name="defaultDate"/>*/
/*                 {{ description }}*/
/*             </label>*/
/*         {% endfor %}*/
/*     </div>*/
/* */
/*     {% if isValidHost is defined and isValidHost %}*/
/*         <div class="form-group">*/
/*             <label for="password">{{ 'General_ChangePassword'|translate }}</label>*/
/*             <div class="form-help">*/
/*                 {{ 'UsersManager_IfYouWouldLikeToChangeThePasswordTypeANewOne'|translate }}*/
/*             </div>*/
/*             <input value="" autocomplete="off" id="password" type="password"/>*/
/*         </div>*/
/*         <div class="form-group">*/
/*             <div class="form-help">*/
/*                 {{ 'UsersManager_TypeYourPasswordAgain'|translate }}*/
/*             </div>*/
/*             <input value="" autocomplete="off" id="passwordBis" type="password"/>*/
/*         </div>*/
/*     {% endif %}*/
/* */
/*     {% if isValidHost is not defined or not isValidHost %}*/
/*         <div class="alert alert-danger">*/
/*             {{ 'UsersManager_InjectedHostCannotChangePwd'|translate(invalidHost) }}*/
/*             {% if not isSuperUser %}{{ 'UsersManager_EmailYourAdministrator'|translate(invalidHostMailLinkStart,'</a>')|raw }}{% endif %}*/
/*         </div>*/
/*     {% endif %}*/
/* */
/*     {% import 'ajaxMacros.twig' as ajax %}*/
/*     {{ ajax.errorDiv('ajaxErrorUserSettings') }}*/
/*     {{ ajax.loadingDiv('ajaxLoadingUserSettings') }}*/
/* */
/*     <button type="button" id="userSettingsSubmit">{{ 'General_Save'|translate }}</button>*/
/* */
/* </form>*/
/* */
/* <h2 id="excludeCookie">{{ 'UsersManager_ExcludeVisitsViaCookie'|translate }}</h2>*/
/* <p>*/
/*     {% if ignoreCookieSet %}*/
/*        {{ 'UsersManager_YourVisitsAreIgnoredOnDomain'|translate("<strong>", piwikHost, "</strong>")|raw }}*/
/*     {% else %}*/
/*        {{ 'UsersManager_YourVisitsAreNotIgnored'|translate("<strong>","</strong>")|raw }}*/
/*     {% endif %}*/
/* </p>*/
/* <span style="margin-left:20px;">*/
/* <a href='{{ linkTo({'ignoreSalt':ignoreSalt, 'action':'setIgnoreCookie'}) }}#excludeCookie'>&rsaquo; {% if ignoreCookieSet %}{{ 'UsersManager_ClickHereToDeleteTheCookie'|translate }}*/
/*     {% else %}{{'UsersManager_ClickHereToSetTheCookieOnDomain'|translate(piwikHost) }}{% endif %}*/
/*     <br/>*/
/* </a></span>*/
/* */
/* {% endblock %}*/
/* */
