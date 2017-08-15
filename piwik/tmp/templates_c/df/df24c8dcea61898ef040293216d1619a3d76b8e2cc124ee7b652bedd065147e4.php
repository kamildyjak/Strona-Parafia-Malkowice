<?php

/* @CoreVisualizations/_dataTableViz_tagCloud.twig */
class __TwigTemplate_76aa6382bc525d8be466044192aa34427ff135a3c7e5bbe0d0d9516ccba228e0 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        $context["cloudColumn"] = $this->getAttribute($this->getAttribute((isset($context["properties"]) ? $context["properties"] : $this->getContext($context, "properties")), "columns_to_display", array()), 1, array(), "array");
        // line 2
        echo "<div class=\"tagCloud\">
";
        // line 3
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["cloudValues"]) ? $context["cloudValues"] : $this->getContext($context, "cloudValues")));
        foreach ($context['_seq'] as $context["word"] => $context["value"]) {
            // line 4
            echo "    <span title=\"";
            echo call_user_func_array($this->env->getFilter('rawSafeDecoded')->getCallable(), array($this->getAttribute($context["value"], "word", array())));
            echo " (";
            echo twig_escape_filter($this->env, $this->getAttribute($context["value"], "value", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, (($this->getAttribute($this->getAttribute((isset($context["properties"]) ? $context["properties"] : null), "translations", array(), "any", false, true), (isset($context["cloudColumn"]) ? $context["cloudColumn"] : $this->getContext($context, "cloudColumn")), array(), "array", true, true)) ? (_twig_default_filter($this->getAttribute($this->getAttribute((isset($context["properties"]) ? $context["properties"] : null), "translations", array(), "any", false, true), (isset($context["cloudColumn"]) ? $context["cloudColumn"] : $this->getContext($context, "cloudColumn")), array(), "array"), (isset($context["cloudColumn"]) ? $context["cloudColumn"] : $this->getContext($context, "cloudColumn")))) : ((isset($context["cloudColumn"]) ? $context["cloudColumn"] : $this->getContext($context, "cloudColumn")))), "html", null, true);
            echo ")\" class=\"word size";
            echo twig_escape_filter($this->env, $this->getAttribute($context["value"], "size", array()), "html", null, true);
            echo "
    ";
            // line 6
            echo "    ";
            if (($this->getAttribute($context["value"], "value", array()) == 0)) {
                echo "valueIsZero";
            }
            echo "\">
    ";
            // line 7
            if ( !($this->getAttribute($this->getAttribute((isset($context["labelMetadata"]) ? $context["labelMetadata"] : $this->getContext($context, "labelMetadata")), $this->getAttribute($context["value"], "word", array()), array(), "array"), "url", array()) === false)) {
                // line 8
                echo "        <a href=\"";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["labelMetadata"]) ? $context["labelMetadata"] : $this->getContext($context, "labelMetadata")), $this->getAttribute($context["value"], "word", array()), array(), "array"), "url", array()), "html", null, true);
                echo "\" rel=\"noreferrer\" target=\"_blank\">
    ";
            }
            // line 10
            echo "    ";
            if ( !($this->getAttribute($this->getAttribute((isset($context["labelMetadata"]) ? $context["labelMetadata"] : $this->getContext($context, "labelMetadata")), $this->getAttribute($context["value"], "word", array()), array(), "array"), "logo", array()) === false)) {
                // line 11
                echo "        <img src=\"";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["labelMetadata"]) ? $context["labelMetadata"] : $this->getContext($context, "labelMetadata")), $this->getAttribute($context["value"], "word", array()), array(), "array"), "logo", array()), "html", null, true);
                echo "\" width=\"";
                echo twig_escape_filter($this->env, $this->getAttribute($context["value"], "logoWidth", array()), "html", null, true);
                echo "\" />
    ";
            } else {
                // line 13
                echo "        ";
                echo call_user_func_array($this->env->getFilter('rawSafeDecoded')->getCallable(), array($this->getAttribute($context["value"], "wordTruncated", array())));
                echo "
    ";
            }
            // line 15
            echo "    ";
            if ( !($this->getAttribute($this->getAttribute((isset($context["labelMetadata"]) ? $context["labelMetadata"] : $this->getContext($context, "labelMetadata")), $this->getAttribute($context["value"], "word", array()), array(), "array"), "url", array()) === false)) {
                echo "</a>";
            }
            // line 16
            echo "    </span>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['word'], $context['value'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 18
        echo "</div>";
    }

    public function getTemplateName()
    {
        return "@CoreVisualizations/_dataTableViz_tagCloud.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  83 => 18,  76 => 16,  71 => 15,  65 => 13,  57 => 11,  54 => 10,  48 => 8,  46 => 7,  39 => 6,  28 => 4,  24 => 3,  21 => 2,  19 => 1,);
    }
}
/* {% set cloudColumn = properties.columns_to_display[1] %}*/
/* <div class="tagCloud">*/
/* {% for word,value in cloudValues %}*/
/*     <span title="{{ value.word|rawSafeDecoded }} ({{ value.value }} {{ properties.translations[cloudColumn]|default(cloudColumn) }})" class="word size{{ value.size }}*/
/*     {# we strike tags with 0 hits #}*/
/*     {% if value.value == 0 %}valueIsZero{% endif %}">*/
/*     {% if labelMetadata[value.word].url is not sameas(false) %}*/
/*         <a href="{{ labelMetadata[value.word].url }}" rel="noreferrer" target="_blank">*/
/*     {% endif %}*/
/*     {% if labelMetadata[value.word].logo is not sameas(false) %}*/
/*         <img src="{{ labelMetadata[value.word].logo }}" width="{{ value.logoWidth }}" />*/
/*     {% else %}*/
/*         {{ value.wordTruncated|rawSafeDecoded }}*/
/*     {% endif %}*/
/*     {% if labelMetadata[value.word].url is not sameas(false) %}</a>{% endif %}*/
/*     </span>*/
/* {% endfor %}*/
/* </div>*/
