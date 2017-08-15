<?php

/* @Installation/finished.twig */
class __TwigTemplate_059ea0b52f8a0d655b191e49572cb9fbcf44d7bb5a1700aad85de12d3b13af5a extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("@Installation/layout.twig", "@Installation/finished.twig", 1);
        $this->blocks = array(
            'content' => array($this, 'block_content'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "@Installation/layout.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_content($context, array $blocks = array())
    {
        // line 4
        echo "
    <h2>";
        // line 5
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("Installation_Congratulations"));
        echo "</h2>

    ";
        // line 7
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("Installation_CongratulationsHelp"));
        echo "

    <h3>";
        // line 9
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("Installation_WelcomeToCommunity")), "html", null, true);
        echo "</h3>
    <p>
        ";
        // line 11
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("Installation_CollaborativeProject")), "html", null, true);
        echo "
    </p>
    <p>
        ";
        // line 14
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("Installation_GetInvolved", "<a  rel=\"noreferrer\"  target=\"_blank\" href=\"http://piwik.org/get-involved/\">", "</a>"));
        echo "
        ";
        // line 15
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_HelpTranslatePiwik", "<a rel='noreferrer' target='_blank' href='http://piwik.org/translations/'>", "</a>"));
        echo "
    </p>
    <p>";
        // line 17
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("Installation_WeHopeYouWillEnjoyPiwik")), "html", null, true);
        echo "</p>
    <p><i>";
        // line 18
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("Installation_HappyAnalysing")), "html", null, true);
        echo "</i></p>

    ";
        // line 20
        if ((isset($context["arePiwikProAdsEnabled"]) ? $context["arePiwikProAdsEnabled"] : $this->getContext($context, "arePiwikProAdsEnabled"))) {
            // line 21
            echo "        <h3>";
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("Installation_PiwikProAdTitle")), "html", null, true);
            echo "</h3>
        <p>
            ";
            // line 23
            $context["linkOnPremises"] = call_user_func_array($this->env->getFilter('piwikProOnPremisesPromoUrl')->getCallable(), array("Installation_End"));
            // line 24
            echo "            ";
            $context["linkOnCloud"] = call_user_func_array($this->env->getFilter('piwikProCloudPromoUrl')->getCallable(), array("Installation_End"));
            // line 25
            echo "
            ";
            // line 26
            echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("Installation_PiwikProAdText", (("<a rel=\"noreferrer\" target=\"_blank\" href=\"" . (isset($context["linkOnPremises"]) ? $context["linkOnPremises"] : $this->getContext($context, "linkOnPremises"))) . "\">"), "</a>", (("<a  rel=\"noreferrer\"  target=\"_blank\" href=\"" . (isset($context["linkOnCloud"]) ? $context["linkOnCloud"] : $this->getContext($context, "linkOnCloud"))) . "\">"), "</a>"));
            echo "
        </p>
    ";
        }
        // line 29
        echo "
    <h3>";
        // line 30
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("Installation_DefaultSettings")), "html", null, true);
        echo "</h3>
    <p>";
        // line 31
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("Installation_DefaultSettingsHelp")), "html", null, true);
        echo "</p>

    ";
        // line 33
        if (array_key_exists("errorMessage", $context)) {
            // line 34
            echo "        <div class=\"alert alert-danger\">
            ";
            // line 35
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Error")), "html", null, true);
            echo ":
            <br/>- ";
            // line 36
            echo (isset($context["errorMessage"]) ? $context["errorMessage"] : $this->getContext($context, "errorMessage"));
            echo "
        </div>
    ";
        }
        // line 39
        echo "
    <div class=\"installation-finished\">
        ";
        // line 41
        if (array_key_exists("form_data", $context)) {
            // line 42
            echo "            ";
            $this->loadTemplate("genericForm.twig", "@Installation/finished.twig", 42)->display($context);
            // line 43
            echo "        ";
        }
        // line 44
        echo "    </div>

";
    }

    public function getTemplateName()
    {
        return "@Installation/finished.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  134 => 44,  131 => 43,  128 => 42,  126 => 41,  122 => 39,  116 => 36,  112 => 35,  109 => 34,  107 => 33,  102 => 31,  98 => 30,  95 => 29,  89 => 26,  86 => 25,  83 => 24,  81 => 23,  75 => 21,  73 => 20,  68 => 18,  64 => 17,  59 => 15,  55 => 14,  49 => 11,  44 => 9,  39 => 7,  34 => 5,  31 => 4,  28 => 3,  11 => 1,);
    }
}
/* {% extends '@Installation/layout.twig' %}*/
/* */
/* {% block content %}*/
/* */
/*     <h2>{{ 'Installation_Congratulations'|translate|raw }}</h2>*/
/* */
/*     {{ 'Installation_CongratulationsHelp'|translate|raw }}*/
/* */
/*     <h3>{{ 'Installation_WelcomeToCommunity'|translate }}</h3>*/
/*     <p>*/
/*         {{ 'Installation_CollaborativeProject'|translate }}*/
/*     </p>*/
/*     <p>*/
/*         {{ 'Installation_GetInvolved'|translate('<a  rel="noreferrer"  target="_blank" href="http://piwik.org/get-involved/">','</a>')|raw }}*/
/*         {{ 'General_HelpTranslatePiwik'|translate("<a rel='noreferrer' target='_blank' href=\'http://piwik.org/translations/\'>","<\/a>")|raw }}*/
/*     </p>*/
/*     <p>{{ 'Installation_WeHopeYouWillEnjoyPiwik'|translate }}</p>*/
/*     <p><i>{{ 'Installation_HappyAnalysing'|translate }}</i></p>*/
/* */
/*     {% if arePiwikProAdsEnabled %}*/
/*         <h3>{{ 'Installation_PiwikProAdTitle'|translate }}</h3>*/
/*         <p>*/
/*             {% set linkOnPremises = 'Installation_End'|piwikProOnPremisesPromoUrl %}*/
/*             {% set linkOnCloud = 'Installation_End'|piwikProCloudPromoUrl %}*/
/* */
/*             {{ 'Installation_PiwikProAdText'|translate('<a rel="noreferrer" target="_blank" href="' ~ linkOnPremises ~ '">','</a>', '<a  rel="noreferrer"  target="_blank" href="' ~ linkOnCloud ~ '">','</a>')|raw }}*/
/*         </p>*/
/*     {% endif %}*/
/* */
/*     <h3>{{ 'Installation_DefaultSettings'|translate }}</h3>*/
/*     <p>{{ 'Installation_DefaultSettingsHelp'|translate }}</p>*/
/* */
/*     {% if errorMessage is defined %}*/
/*         <div class="alert alert-danger">*/
/*             {{ 'General_Error'|translate }}:*/
/*             <br/>- {{ errorMessage|raw }}*/
/*         </div>*/
/*     {% endif %}*/
/* */
/*     <div class="installation-finished">*/
/*         {% if form_data is defined %}*/
/*             {% include "genericForm.twig" %}*/
/*         {% endif %}*/
/*     </div>*/
/* */
/* {% endblock %}*/
/* */
