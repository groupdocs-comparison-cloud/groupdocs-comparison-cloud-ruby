 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="color.rb">
 #   Copyright (c) 2003-2018 Aspose Pty Ltd
 # </copyright>
 # <summary>
 #  Permission is hereby granted, free of charge, to any person obtaining a copy
 #  of this software and associated documentation files (the "Software"), to deal
 #  in the Software without restriction, including without limitation the rights
 #  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 #  copies of the Software, and to permit persons to whom the Software is
 #  furnished to do so, subject to the following conditions:
 #
 #  The above copyright notice and this permission notice shall be included in all
 #  copies or substantial portions of the Software.
 #
 #  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 #  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 #  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 #  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 #  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 #  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 #  SOFTWARE.
 # </summary>
 # --------------------------------------------------------------------------------------------------------------------
 #

require 'date'

module GroupDocsComparisonCloud
  
  class Color
    attr_accessor :transparent
    attr_accessor :alice_blue
    attr_accessor :antique_white
    attr_accessor :aqua
    attr_accessor :aquamarine
    attr_accessor :azure
    attr_accessor :beige
    attr_accessor :bisque
    attr_accessor :black
    attr_accessor :blanched_almond
    attr_accessor :blue
    attr_accessor :blue_violet
    attr_accessor :brown
    attr_accessor :burly_wood
    attr_accessor :cadet_blue
    attr_accessor :chartreuse
    attr_accessor :chocolate
    attr_accessor :coral
    attr_accessor :cornflower_blue
    attr_accessor :cornsilk
    attr_accessor :crimson
    attr_accessor :cyan
    attr_accessor :dark_blue
    attr_accessor :dark_cyan
    attr_accessor :dark_goldenrod
    attr_accessor :dark_gray
    attr_accessor :dark_green
    attr_accessor :dark_khaki
    attr_accessor :dark_magenta
    attr_accessor :dark_olive_green
    attr_accessor :dark_orange
    attr_accessor :dark_orchid
    attr_accessor :dark_red
    attr_accessor :dark_salmon
    attr_accessor :dark_sea_green
    attr_accessor :dark_slate_blue
    attr_accessor :dark_slate_gray
    attr_accessor :dark_turquoise
    attr_accessor :dark_violet
    attr_accessor :deep_pink
    attr_accessor :deep_sky_blue
    attr_accessor :dim_gray
    attr_accessor :dodger_blue
    attr_accessor :firebrick
    attr_accessor :floral_white
    attr_accessor :forest_green
    attr_accessor :fuchsia
    attr_accessor :gainsboro
    attr_accessor :ghost_white
    attr_accessor :gold
    attr_accessor :goldenrod
    attr_accessor :gray
    attr_accessor :green
    attr_accessor :green_yellow
    attr_accessor :honeydew
    attr_accessor :hot_pink
    attr_accessor :indian_red
    attr_accessor :indigo
    attr_accessor :ivory
    attr_accessor :khaki
    attr_accessor :lavender
    attr_accessor :lavender_blush
    attr_accessor :lawn_green
    attr_accessor :lemon_chiffon
    attr_accessor :light_blue
    attr_accessor :light_coral
    attr_accessor :light_cyan
    attr_accessor :light_goldenrod_yellow
    attr_accessor :light_green
    attr_accessor :light_gray
    attr_accessor :light_pink
    attr_accessor :light_salmon
    attr_accessor :light_sea_green
    attr_accessor :light_sky_blue
    attr_accessor :light_slate_gray
    attr_accessor :light_steel_blue
    attr_accessor :light_yellow
    attr_accessor :lime
    attr_accessor :lime_green
    attr_accessor :linen
    attr_accessor :magenta
    attr_accessor :maroon
    attr_accessor :medium_aquamarine
    attr_accessor :medium_blue
    attr_accessor :medium_orchid
    attr_accessor :medium_purple
    attr_accessor :medium_sea_green
    attr_accessor :medium_slate_blue
    attr_accessor :medium_spring_green
    attr_accessor :medium_turquoise
    attr_accessor :medium_violet_red
    attr_accessor :midnight_blue
    attr_accessor :mint_cream
    attr_accessor :misty_rose
    attr_accessor :moccasin
    attr_accessor :navajo_white
    attr_accessor :navy
    attr_accessor :old_lace
    attr_accessor :olive
    attr_accessor :olive_drab
    attr_accessor :orange
    attr_accessor :orange_red
    attr_accessor :orchid
    attr_accessor :pale_goldenrod
    attr_accessor :pale_green
    attr_accessor :pale_turquoise
    attr_accessor :pale_violet_red
    attr_accessor :papaya_whip
    attr_accessor :peach_puff
    attr_accessor :peru
    attr_accessor :pink
    attr_accessor :plum
    attr_accessor :powder_blue
    attr_accessor :purple
    attr_accessor :red
    attr_accessor :rosy_brown
    attr_accessor :royal_blue
    attr_accessor :saddle_brown
    attr_accessor :salmon
    attr_accessor :sandy_brown
    attr_accessor :sea_green
    attr_accessor :sea_shell
    attr_accessor :sienna
    attr_accessor :silver
    attr_accessor :sky_blue
    attr_accessor :slate_blue
    attr_accessor :slate_gray
    attr_accessor :snow
    attr_accessor :spring_green
    attr_accessor :steel_blue
    attr_accessor :tan
    attr_accessor :teal
    attr_accessor :thistle
    attr_accessor :tomato
    attr_accessor :turquoise
    attr_accessor :violet
    attr_accessor :wheat
    attr_accessor :white
    attr_accessor :white_smoke
    attr_accessor :yellow
    attr_accessor :yellow_green
    attr_accessor :r
    attr_accessor :g
    attr_accessor :b
    attr_accessor :a
    attr_accessor :is_known_color
    attr_accessor :is_empty
    attr_accessor :is_named_color
    attr_accessor :is_system_color
    attr_accessor :name
    attr_accessor :empty

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'transparent' => :'Transparent',
        :'alice_blue' => :'AliceBlue',
        :'antique_white' => :'AntiqueWhite',
        :'aqua' => :'Aqua',
        :'aquamarine' => :'Aquamarine',
        :'azure' => :'Azure',
        :'beige' => :'Beige',
        :'bisque' => :'Bisque',
        :'black' => :'Black',
        :'blanched_almond' => :'BlanchedAlmond',
        :'blue' => :'Blue',
        :'blue_violet' => :'BlueViolet',
        :'brown' => :'Brown',
        :'burly_wood' => :'BurlyWood',
        :'cadet_blue' => :'CadetBlue',
        :'chartreuse' => :'Chartreuse',
        :'chocolate' => :'Chocolate',
        :'coral' => :'Coral',
        :'cornflower_blue' => :'CornflowerBlue',
        :'cornsilk' => :'Cornsilk',
        :'crimson' => :'Crimson',
        :'cyan' => :'Cyan',
        :'dark_blue' => :'DarkBlue',
        :'dark_cyan' => :'DarkCyan',
        :'dark_goldenrod' => :'DarkGoldenrod',
        :'dark_gray' => :'DarkGray',
        :'dark_green' => :'DarkGreen',
        :'dark_khaki' => :'DarkKhaki',
        :'dark_magenta' => :'DarkMagenta',
        :'dark_olive_green' => :'DarkOliveGreen',
        :'dark_orange' => :'DarkOrange',
        :'dark_orchid' => :'DarkOrchid',
        :'dark_red' => :'DarkRed',
        :'dark_salmon' => :'DarkSalmon',
        :'dark_sea_green' => :'DarkSeaGreen',
        :'dark_slate_blue' => :'DarkSlateBlue',
        :'dark_slate_gray' => :'DarkSlateGray',
        :'dark_turquoise' => :'DarkTurquoise',
        :'dark_violet' => :'DarkViolet',
        :'deep_pink' => :'DeepPink',
        :'deep_sky_blue' => :'DeepSkyBlue',
        :'dim_gray' => :'DimGray',
        :'dodger_blue' => :'DodgerBlue',
        :'firebrick' => :'Firebrick',
        :'floral_white' => :'FloralWhite',
        :'forest_green' => :'ForestGreen',
        :'fuchsia' => :'Fuchsia',
        :'gainsboro' => :'Gainsboro',
        :'ghost_white' => :'GhostWhite',
        :'gold' => :'Gold',
        :'goldenrod' => :'Goldenrod',
        :'gray' => :'Gray',
        :'green' => :'Green',
        :'green_yellow' => :'GreenYellow',
        :'honeydew' => :'Honeydew',
        :'hot_pink' => :'HotPink',
        :'indian_red' => :'IndianRed',
        :'indigo' => :'Indigo',
        :'ivory' => :'Ivory',
        :'khaki' => :'Khaki',
        :'lavender' => :'Lavender',
        :'lavender_blush' => :'LavenderBlush',
        :'lawn_green' => :'LawnGreen',
        :'lemon_chiffon' => :'LemonChiffon',
        :'light_blue' => :'LightBlue',
        :'light_coral' => :'LightCoral',
        :'light_cyan' => :'LightCyan',
        :'light_goldenrod_yellow' => :'LightGoldenrodYellow',
        :'light_green' => :'LightGreen',
        :'light_gray' => :'LightGray',
        :'light_pink' => :'LightPink',
        :'light_salmon' => :'LightSalmon',
        :'light_sea_green' => :'LightSeaGreen',
        :'light_sky_blue' => :'LightSkyBlue',
        :'light_slate_gray' => :'LightSlateGray',
        :'light_steel_blue' => :'LightSteelBlue',
        :'light_yellow' => :'LightYellow',
        :'lime' => :'Lime',
        :'lime_green' => :'LimeGreen',
        :'linen' => :'Linen',
        :'magenta' => :'Magenta',
        :'maroon' => :'Maroon',
        :'medium_aquamarine' => :'MediumAquamarine',
        :'medium_blue' => :'MediumBlue',
        :'medium_orchid' => :'MediumOrchid',
        :'medium_purple' => :'MediumPurple',
        :'medium_sea_green' => :'MediumSeaGreen',
        :'medium_slate_blue' => :'MediumSlateBlue',
        :'medium_spring_green' => :'MediumSpringGreen',
        :'medium_turquoise' => :'MediumTurquoise',
        :'medium_violet_red' => :'MediumVioletRed',
        :'midnight_blue' => :'MidnightBlue',
        :'mint_cream' => :'MintCream',
        :'misty_rose' => :'MistyRose',
        :'moccasin' => :'Moccasin',
        :'navajo_white' => :'NavajoWhite',
        :'navy' => :'Navy',
        :'old_lace' => :'OldLace',
        :'olive' => :'Olive',
        :'olive_drab' => :'OliveDrab',
        :'orange' => :'Orange',
        :'orange_red' => :'OrangeRed',
        :'orchid' => :'Orchid',
        :'pale_goldenrod' => :'PaleGoldenrod',
        :'pale_green' => :'PaleGreen',
        :'pale_turquoise' => :'PaleTurquoise',
        :'pale_violet_red' => :'PaleVioletRed',
        :'papaya_whip' => :'PapayaWhip',
        :'peach_puff' => :'PeachPuff',
        :'peru' => :'Peru',
        :'pink' => :'Pink',
        :'plum' => :'Plum',
        :'powder_blue' => :'PowderBlue',
        :'purple' => :'Purple',
        :'red' => :'Red',
        :'rosy_brown' => :'RosyBrown',
        :'royal_blue' => :'RoyalBlue',
        :'saddle_brown' => :'SaddleBrown',
        :'salmon' => :'Salmon',
        :'sandy_brown' => :'SandyBrown',
        :'sea_green' => :'SeaGreen',
        :'sea_shell' => :'SeaShell',
        :'sienna' => :'Sienna',
        :'silver' => :'Silver',
        :'sky_blue' => :'SkyBlue',
        :'slate_blue' => :'SlateBlue',
        :'slate_gray' => :'SlateGray',
        :'snow' => :'Snow',
        :'spring_green' => :'SpringGreen',
        :'steel_blue' => :'SteelBlue',
        :'tan' => :'Tan',
        :'teal' => :'Teal',
        :'thistle' => :'Thistle',
        :'tomato' => :'Tomato',
        :'turquoise' => :'Turquoise',
        :'violet' => :'Violet',
        :'wheat' => :'Wheat',
        :'white' => :'White',
        :'white_smoke' => :'WhiteSmoke',
        :'yellow' => :'Yellow',
        :'yellow_green' => :'YellowGreen',
        :'r' => :'R',
        :'g' => :'G',
        :'b' => :'B',
        :'a' => :'A',
        :'is_known_color' => :'IsKnownColor',
        :'is_empty' => :'IsEmpty',
        :'is_named_color' => :'IsNamedColor',
        :'is_system_color' => :'IsSystemColor',
        :'name' => :'Name',
        :'empty' => :'Empty'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'transparent' => :'Color',
        :'alice_blue' => :'Color',
        :'antique_white' => :'Color',
        :'aqua' => :'Color',
        :'aquamarine' => :'Color',
        :'azure' => :'Color',
        :'beige' => :'Color',
        :'bisque' => :'Color',
        :'black' => :'Color',
        :'blanched_almond' => :'Color',
        :'blue' => :'Color',
        :'blue_violet' => :'Color',
        :'brown' => :'Color',
        :'burly_wood' => :'Color',
        :'cadet_blue' => :'Color',
        :'chartreuse' => :'Color',
        :'chocolate' => :'Color',
        :'coral' => :'Color',
        :'cornflower_blue' => :'Color',
        :'cornsilk' => :'Color',
        :'crimson' => :'Color',
        :'cyan' => :'Color',
        :'dark_blue' => :'Color',
        :'dark_cyan' => :'Color',
        :'dark_goldenrod' => :'Color',
        :'dark_gray' => :'Color',
        :'dark_green' => :'Color',
        :'dark_khaki' => :'Color',
        :'dark_magenta' => :'Color',
        :'dark_olive_green' => :'Color',
        :'dark_orange' => :'Color',
        :'dark_orchid' => :'Color',
        :'dark_red' => :'Color',
        :'dark_salmon' => :'Color',
        :'dark_sea_green' => :'Color',
        :'dark_slate_blue' => :'Color',
        :'dark_slate_gray' => :'Color',
        :'dark_turquoise' => :'Color',
        :'dark_violet' => :'Color',
        :'deep_pink' => :'Color',
        :'deep_sky_blue' => :'Color',
        :'dim_gray' => :'Color',
        :'dodger_blue' => :'Color',
        :'firebrick' => :'Color',
        :'floral_white' => :'Color',
        :'forest_green' => :'Color',
        :'fuchsia' => :'Color',
        :'gainsboro' => :'Color',
        :'ghost_white' => :'Color',
        :'gold' => :'Color',
        :'goldenrod' => :'Color',
        :'gray' => :'Color',
        :'green' => :'Color',
        :'green_yellow' => :'Color',
        :'honeydew' => :'Color',
        :'hot_pink' => :'Color',
        :'indian_red' => :'Color',
        :'indigo' => :'Color',
        :'ivory' => :'Color',
        :'khaki' => :'Color',
        :'lavender' => :'Color',
        :'lavender_blush' => :'Color',
        :'lawn_green' => :'Color',
        :'lemon_chiffon' => :'Color',
        :'light_blue' => :'Color',
        :'light_coral' => :'Color',
        :'light_cyan' => :'Color',
        :'light_goldenrod_yellow' => :'Color',
        :'light_green' => :'Color',
        :'light_gray' => :'Color',
        :'light_pink' => :'Color',
        :'light_salmon' => :'Color',
        :'light_sea_green' => :'Color',
        :'light_sky_blue' => :'Color',
        :'light_slate_gray' => :'Color',
        :'light_steel_blue' => :'Color',
        :'light_yellow' => :'Color',
        :'lime' => :'Color',
        :'lime_green' => :'Color',
        :'linen' => :'Color',
        :'magenta' => :'Color',
        :'maroon' => :'Color',
        :'medium_aquamarine' => :'Color',
        :'medium_blue' => :'Color',
        :'medium_orchid' => :'Color',
        :'medium_purple' => :'Color',
        :'medium_sea_green' => :'Color',
        :'medium_slate_blue' => :'Color',
        :'medium_spring_green' => :'Color',
        :'medium_turquoise' => :'Color',
        :'medium_violet_red' => :'Color',
        :'midnight_blue' => :'Color',
        :'mint_cream' => :'Color',
        :'misty_rose' => :'Color',
        :'moccasin' => :'Color',
        :'navajo_white' => :'Color',
        :'navy' => :'Color',
        :'old_lace' => :'Color',
        :'olive' => :'Color',
        :'olive_drab' => :'Color',
        :'orange' => :'Color',
        :'orange_red' => :'Color',
        :'orchid' => :'Color',
        :'pale_goldenrod' => :'Color',
        :'pale_green' => :'Color',
        :'pale_turquoise' => :'Color',
        :'pale_violet_red' => :'Color',
        :'papaya_whip' => :'Color',
        :'peach_puff' => :'Color',
        :'peru' => :'Color',
        :'pink' => :'Color',
        :'plum' => :'Color',
        :'powder_blue' => :'Color',
        :'purple' => :'Color',
        :'red' => :'Color',
        :'rosy_brown' => :'Color',
        :'royal_blue' => :'Color',
        :'saddle_brown' => :'Color',
        :'salmon' => :'Color',
        :'sandy_brown' => :'Color',
        :'sea_green' => :'Color',
        :'sea_shell' => :'Color',
        :'sienna' => :'Color',
        :'silver' => :'Color',
        :'sky_blue' => :'Color',
        :'slate_blue' => :'Color',
        :'slate_gray' => :'Color',
        :'snow' => :'Color',
        :'spring_green' => :'Color',
        :'steel_blue' => :'Color',
        :'tan' => :'Color',
        :'teal' => :'Color',
        :'thistle' => :'Color',
        :'tomato' => :'Color',
        :'turquoise' => :'Color',
        :'violet' => :'Color',
        :'wheat' => :'Color',
        :'white' => :'Color',
        :'white_smoke' => :'Color',
        :'yellow' => :'Color',
        :'yellow_green' => :'Color',
        :'r' => :'Integer',
        :'g' => :'Integer',
        :'b' => :'Integer',
        :'a' => :'Integer',
        :'is_known_color' => :'BOOLEAN',
        :'is_empty' => :'BOOLEAN',
        :'is_named_color' => :'BOOLEAN',
        :'is_system_color' => :'BOOLEAN',
        :'name' => :'String',
        :'empty' => :'Color'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'Transparent')
        self.transparent = attributes[:'Transparent']
      end

      if attributes.key?(:'AliceBlue')
        self.alice_blue = attributes[:'AliceBlue']
      end

      if attributes.key?(:'AntiqueWhite')
        self.antique_white = attributes[:'AntiqueWhite']
      end

      if attributes.key?(:'Aqua')
        self.aqua = attributes[:'Aqua']
      end

      if attributes.key?(:'Aquamarine')
        self.aquamarine = attributes[:'Aquamarine']
      end

      if attributes.key?(:'Azure')
        self.azure = attributes[:'Azure']
      end

      if attributes.key?(:'Beige')
        self.beige = attributes[:'Beige']
      end

      if attributes.key?(:'Bisque')
        self.bisque = attributes[:'Bisque']
      end

      if attributes.key?(:'Black')
        self.black = attributes[:'Black']
      end

      if attributes.key?(:'BlanchedAlmond')
        self.blanched_almond = attributes[:'BlanchedAlmond']
      end

      if attributes.key?(:'Blue')
        self.blue = attributes[:'Blue']
      end

      if attributes.key?(:'BlueViolet')
        self.blue_violet = attributes[:'BlueViolet']
      end

      if attributes.key?(:'Brown')
        self.brown = attributes[:'Brown']
      end

      if attributes.key?(:'BurlyWood')
        self.burly_wood = attributes[:'BurlyWood']
      end

      if attributes.key?(:'CadetBlue')
        self.cadet_blue = attributes[:'CadetBlue']
      end

      if attributes.key?(:'Chartreuse')
        self.chartreuse = attributes[:'Chartreuse']
      end

      if attributes.key?(:'Chocolate')
        self.chocolate = attributes[:'Chocolate']
      end

      if attributes.key?(:'Coral')
        self.coral = attributes[:'Coral']
      end

      if attributes.key?(:'CornflowerBlue')
        self.cornflower_blue = attributes[:'CornflowerBlue']
      end

      if attributes.key?(:'Cornsilk')
        self.cornsilk = attributes[:'Cornsilk']
      end

      if attributes.key?(:'Crimson')
        self.crimson = attributes[:'Crimson']
      end

      if attributes.key?(:'Cyan')
        self.cyan = attributes[:'Cyan']
      end

      if attributes.key?(:'DarkBlue')
        self.dark_blue = attributes[:'DarkBlue']
      end

      if attributes.key?(:'DarkCyan')
        self.dark_cyan = attributes[:'DarkCyan']
      end

      if attributes.key?(:'DarkGoldenrod')
        self.dark_goldenrod = attributes[:'DarkGoldenrod']
      end

      if attributes.key?(:'DarkGray')
        self.dark_gray = attributes[:'DarkGray']
      end

      if attributes.key?(:'DarkGreen')
        self.dark_green = attributes[:'DarkGreen']
      end

      if attributes.key?(:'DarkKhaki')
        self.dark_khaki = attributes[:'DarkKhaki']
      end

      if attributes.key?(:'DarkMagenta')
        self.dark_magenta = attributes[:'DarkMagenta']
      end

      if attributes.key?(:'DarkOliveGreen')
        self.dark_olive_green = attributes[:'DarkOliveGreen']
      end

      if attributes.key?(:'DarkOrange')
        self.dark_orange = attributes[:'DarkOrange']
      end

      if attributes.key?(:'DarkOrchid')
        self.dark_orchid = attributes[:'DarkOrchid']
      end

      if attributes.key?(:'DarkRed')
        self.dark_red = attributes[:'DarkRed']
      end

      if attributes.key?(:'DarkSalmon')
        self.dark_salmon = attributes[:'DarkSalmon']
      end

      if attributes.key?(:'DarkSeaGreen')
        self.dark_sea_green = attributes[:'DarkSeaGreen']
      end

      if attributes.key?(:'DarkSlateBlue')
        self.dark_slate_blue = attributes[:'DarkSlateBlue']
      end

      if attributes.key?(:'DarkSlateGray')
        self.dark_slate_gray = attributes[:'DarkSlateGray']
      end

      if attributes.key?(:'DarkTurquoise')
        self.dark_turquoise = attributes[:'DarkTurquoise']
      end

      if attributes.key?(:'DarkViolet')
        self.dark_violet = attributes[:'DarkViolet']
      end

      if attributes.key?(:'DeepPink')
        self.deep_pink = attributes[:'DeepPink']
      end

      if attributes.key?(:'DeepSkyBlue')
        self.deep_sky_blue = attributes[:'DeepSkyBlue']
      end

      if attributes.key?(:'DimGray')
        self.dim_gray = attributes[:'DimGray']
      end

      if attributes.key?(:'DodgerBlue')
        self.dodger_blue = attributes[:'DodgerBlue']
      end

      if attributes.key?(:'Firebrick')
        self.firebrick = attributes[:'Firebrick']
      end

      if attributes.key?(:'FloralWhite')
        self.floral_white = attributes[:'FloralWhite']
      end

      if attributes.key?(:'ForestGreen')
        self.forest_green = attributes[:'ForestGreen']
      end

      if attributes.key?(:'Fuchsia')
        self.fuchsia = attributes[:'Fuchsia']
      end

      if attributes.key?(:'Gainsboro')
        self.gainsboro = attributes[:'Gainsboro']
      end

      if attributes.key?(:'GhostWhite')
        self.ghost_white = attributes[:'GhostWhite']
      end

      if attributes.key?(:'Gold')
        self.gold = attributes[:'Gold']
      end

      if attributes.key?(:'Goldenrod')
        self.goldenrod = attributes[:'Goldenrod']
      end

      if attributes.key?(:'Gray')
        self.gray = attributes[:'Gray']
      end

      if attributes.key?(:'Green')
        self.green = attributes[:'Green']
      end

      if attributes.key?(:'GreenYellow')
        self.green_yellow = attributes[:'GreenYellow']
      end

      if attributes.key?(:'Honeydew')
        self.honeydew = attributes[:'Honeydew']
      end

      if attributes.key?(:'HotPink')
        self.hot_pink = attributes[:'HotPink']
      end

      if attributes.key?(:'IndianRed')
        self.indian_red = attributes[:'IndianRed']
      end

      if attributes.key?(:'Indigo')
        self.indigo = attributes[:'Indigo']
      end

      if attributes.key?(:'Ivory')
        self.ivory = attributes[:'Ivory']
      end

      if attributes.key?(:'Khaki')
        self.khaki = attributes[:'Khaki']
      end

      if attributes.key?(:'Lavender')
        self.lavender = attributes[:'Lavender']
      end

      if attributes.key?(:'LavenderBlush')
        self.lavender_blush = attributes[:'LavenderBlush']
      end

      if attributes.key?(:'LawnGreen')
        self.lawn_green = attributes[:'LawnGreen']
      end

      if attributes.key?(:'LemonChiffon')
        self.lemon_chiffon = attributes[:'LemonChiffon']
      end

      if attributes.key?(:'LightBlue')
        self.light_blue = attributes[:'LightBlue']
      end

      if attributes.key?(:'LightCoral')
        self.light_coral = attributes[:'LightCoral']
      end

      if attributes.key?(:'LightCyan')
        self.light_cyan = attributes[:'LightCyan']
      end

      if attributes.key?(:'LightGoldenrodYellow')
        self.light_goldenrod_yellow = attributes[:'LightGoldenrodYellow']
      end

      if attributes.key?(:'LightGreen')
        self.light_green = attributes[:'LightGreen']
      end

      if attributes.key?(:'LightGray')
        self.light_gray = attributes[:'LightGray']
      end

      if attributes.key?(:'LightPink')
        self.light_pink = attributes[:'LightPink']
      end

      if attributes.key?(:'LightSalmon')
        self.light_salmon = attributes[:'LightSalmon']
      end

      if attributes.key?(:'LightSeaGreen')
        self.light_sea_green = attributes[:'LightSeaGreen']
      end

      if attributes.key?(:'LightSkyBlue')
        self.light_sky_blue = attributes[:'LightSkyBlue']
      end

      if attributes.key?(:'LightSlateGray')
        self.light_slate_gray = attributes[:'LightSlateGray']
      end

      if attributes.key?(:'LightSteelBlue')
        self.light_steel_blue = attributes[:'LightSteelBlue']
      end

      if attributes.key?(:'LightYellow')
        self.light_yellow = attributes[:'LightYellow']
      end

      if attributes.key?(:'Lime')
        self.lime = attributes[:'Lime']
      end

      if attributes.key?(:'LimeGreen')
        self.lime_green = attributes[:'LimeGreen']
      end

      if attributes.key?(:'Linen')
        self.linen = attributes[:'Linen']
      end

      if attributes.key?(:'Magenta')
        self.magenta = attributes[:'Magenta']
      end

      if attributes.key?(:'Maroon')
        self.maroon = attributes[:'Maroon']
      end

      if attributes.key?(:'MediumAquamarine')
        self.medium_aquamarine = attributes[:'MediumAquamarine']
      end

      if attributes.key?(:'MediumBlue')
        self.medium_blue = attributes[:'MediumBlue']
      end

      if attributes.key?(:'MediumOrchid')
        self.medium_orchid = attributes[:'MediumOrchid']
      end

      if attributes.key?(:'MediumPurple')
        self.medium_purple = attributes[:'MediumPurple']
      end

      if attributes.key?(:'MediumSeaGreen')
        self.medium_sea_green = attributes[:'MediumSeaGreen']
      end

      if attributes.key?(:'MediumSlateBlue')
        self.medium_slate_blue = attributes[:'MediumSlateBlue']
      end

      if attributes.key?(:'MediumSpringGreen')
        self.medium_spring_green = attributes[:'MediumSpringGreen']
      end

      if attributes.key?(:'MediumTurquoise')
        self.medium_turquoise = attributes[:'MediumTurquoise']
      end

      if attributes.key?(:'MediumVioletRed')
        self.medium_violet_red = attributes[:'MediumVioletRed']
      end

      if attributes.key?(:'MidnightBlue')
        self.midnight_blue = attributes[:'MidnightBlue']
      end

      if attributes.key?(:'MintCream')
        self.mint_cream = attributes[:'MintCream']
      end

      if attributes.key?(:'MistyRose')
        self.misty_rose = attributes[:'MistyRose']
      end

      if attributes.key?(:'Moccasin')
        self.moccasin = attributes[:'Moccasin']
      end

      if attributes.key?(:'NavajoWhite')
        self.navajo_white = attributes[:'NavajoWhite']
      end

      if attributes.key?(:'Navy')
        self.navy = attributes[:'Navy']
      end

      if attributes.key?(:'OldLace')
        self.old_lace = attributes[:'OldLace']
      end

      if attributes.key?(:'Olive')
        self.olive = attributes[:'Olive']
      end

      if attributes.key?(:'OliveDrab')
        self.olive_drab = attributes[:'OliveDrab']
      end

      if attributes.key?(:'Orange')
        self.orange = attributes[:'Orange']
      end

      if attributes.key?(:'OrangeRed')
        self.orange_red = attributes[:'OrangeRed']
      end

      if attributes.key?(:'Orchid')
        self.orchid = attributes[:'Orchid']
      end

      if attributes.key?(:'PaleGoldenrod')
        self.pale_goldenrod = attributes[:'PaleGoldenrod']
      end

      if attributes.key?(:'PaleGreen')
        self.pale_green = attributes[:'PaleGreen']
      end

      if attributes.key?(:'PaleTurquoise')
        self.pale_turquoise = attributes[:'PaleTurquoise']
      end

      if attributes.key?(:'PaleVioletRed')
        self.pale_violet_red = attributes[:'PaleVioletRed']
      end

      if attributes.key?(:'PapayaWhip')
        self.papaya_whip = attributes[:'PapayaWhip']
      end

      if attributes.key?(:'PeachPuff')
        self.peach_puff = attributes[:'PeachPuff']
      end

      if attributes.key?(:'Peru')
        self.peru = attributes[:'Peru']
      end

      if attributes.key?(:'Pink')
        self.pink = attributes[:'Pink']
      end

      if attributes.key?(:'Plum')
        self.plum = attributes[:'Plum']
      end

      if attributes.key?(:'PowderBlue')
        self.powder_blue = attributes[:'PowderBlue']
      end

      if attributes.key?(:'Purple')
        self.purple = attributes[:'Purple']
      end

      if attributes.key?(:'Red')
        self.red = attributes[:'Red']
      end

      if attributes.key?(:'RosyBrown')
        self.rosy_brown = attributes[:'RosyBrown']
      end

      if attributes.key?(:'RoyalBlue')
        self.royal_blue = attributes[:'RoyalBlue']
      end

      if attributes.key?(:'SaddleBrown')
        self.saddle_brown = attributes[:'SaddleBrown']
      end

      if attributes.key?(:'Salmon')
        self.salmon = attributes[:'Salmon']
      end

      if attributes.key?(:'SandyBrown')
        self.sandy_brown = attributes[:'SandyBrown']
      end

      if attributes.key?(:'SeaGreen')
        self.sea_green = attributes[:'SeaGreen']
      end

      if attributes.key?(:'SeaShell')
        self.sea_shell = attributes[:'SeaShell']
      end

      if attributes.key?(:'Sienna')
        self.sienna = attributes[:'Sienna']
      end

      if attributes.key?(:'Silver')
        self.silver = attributes[:'Silver']
      end

      if attributes.key?(:'SkyBlue')
        self.sky_blue = attributes[:'SkyBlue']
      end

      if attributes.key?(:'SlateBlue')
        self.slate_blue = attributes[:'SlateBlue']
      end

      if attributes.key?(:'SlateGray')
        self.slate_gray = attributes[:'SlateGray']
      end

      if attributes.key?(:'Snow')
        self.snow = attributes[:'Snow']
      end

      if attributes.key?(:'SpringGreen')
        self.spring_green = attributes[:'SpringGreen']
      end

      if attributes.key?(:'SteelBlue')
        self.steel_blue = attributes[:'SteelBlue']
      end

      if attributes.key?(:'Tan')
        self.tan = attributes[:'Tan']
      end

      if attributes.key?(:'Teal')
        self.teal = attributes[:'Teal']
      end

      if attributes.key?(:'Thistle')
        self.thistle = attributes[:'Thistle']
      end

      if attributes.key?(:'Tomato')
        self.tomato = attributes[:'Tomato']
      end

      if attributes.key?(:'Turquoise')
        self.turquoise = attributes[:'Turquoise']
      end

      if attributes.key?(:'Violet')
        self.violet = attributes[:'Violet']
      end

      if attributes.key?(:'Wheat')
        self.wheat = attributes[:'Wheat']
      end

      if attributes.key?(:'White')
        self.white = attributes[:'White']
      end

      if attributes.key?(:'WhiteSmoke')
        self.white_smoke = attributes[:'WhiteSmoke']
      end

      if attributes.key?(:'Yellow')
        self.yellow = attributes[:'Yellow']
      end

      if attributes.key?(:'YellowGreen')
        self.yellow_green = attributes[:'YellowGreen']
      end

      if attributes.key?(:'R')
        self.r = attributes[:'R']
      end

      if attributes.key?(:'G')
        self.g = attributes[:'G']
      end

      if attributes.key?(:'B')
        self.b = attributes[:'B']
      end

      if attributes.key?(:'A')
        self.a = attributes[:'A']
      end

      if attributes.key?(:'IsKnownColor')
        self.is_known_color = attributes[:'IsKnownColor']
      end

      if attributes.key?(:'IsEmpty')
        self.is_empty = attributes[:'IsEmpty']
      end

      if attributes.key?(:'IsNamedColor')
        self.is_named_color = attributes[:'IsNamedColor']
      end

      if attributes.key?(:'IsSystemColor')
        self.is_system_color = attributes[:'IsSystemColor']
      end

      if attributes.key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.key?(:'Empty')
        self.empty = attributes[:'Empty']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          transparent == other.transparent &&
          alice_blue == other.alice_blue &&
          antique_white == other.antique_white &&
          aqua == other.aqua &&
          aquamarine == other.aquamarine &&
          azure == other.azure &&
          beige == other.beige &&
          bisque == other.bisque &&
          black == other.black &&
          blanched_almond == other.blanched_almond &&
          blue == other.blue &&
          blue_violet == other.blue_violet &&
          brown == other.brown &&
          burly_wood == other.burly_wood &&
          cadet_blue == other.cadet_blue &&
          chartreuse == other.chartreuse &&
          chocolate == other.chocolate &&
          coral == other.coral &&
          cornflower_blue == other.cornflower_blue &&
          cornsilk == other.cornsilk &&
          crimson == other.crimson &&
          cyan == other.cyan &&
          dark_blue == other.dark_blue &&
          dark_cyan == other.dark_cyan &&
          dark_goldenrod == other.dark_goldenrod &&
          dark_gray == other.dark_gray &&
          dark_green == other.dark_green &&
          dark_khaki == other.dark_khaki &&
          dark_magenta == other.dark_magenta &&
          dark_olive_green == other.dark_olive_green &&
          dark_orange == other.dark_orange &&
          dark_orchid == other.dark_orchid &&
          dark_red == other.dark_red &&
          dark_salmon == other.dark_salmon &&
          dark_sea_green == other.dark_sea_green &&
          dark_slate_blue == other.dark_slate_blue &&
          dark_slate_gray == other.dark_slate_gray &&
          dark_turquoise == other.dark_turquoise &&
          dark_violet == other.dark_violet &&
          deep_pink == other.deep_pink &&
          deep_sky_blue == other.deep_sky_blue &&
          dim_gray == other.dim_gray &&
          dodger_blue == other.dodger_blue &&
          firebrick == other.firebrick &&
          floral_white == other.floral_white &&
          forest_green == other.forest_green &&
          fuchsia == other.fuchsia &&
          gainsboro == other.gainsboro &&
          ghost_white == other.ghost_white &&
          gold == other.gold &&
          goldenrod == other.goldenrod &&
          gray == other.gray &&
          green == other.green &&
          green_yellow == other.green_yellow &&
          honeydew == other.honeydew &&
          hot_pink == other.hot_pink &&
          indian_red == other.indian_red &&
          indigo == other.indigo &&
          ivory == other.ivory &&
          khaki == other.khaki &&
          lavender == other.lavender &&
          lavender_blush == other.lavender_blush &&
          lawn_green == other.lawn_green &&
          lemon_chiffon == other.lemon_chiffon &&
          light_blue == other.light_blue &&
          light_coral == other.light_coral &&
          light_cyan == other.light_cyan &&
          light_goldenrod_yellow == other.light_goldenrod_yellow &&
          light_green == other.light_green &&
          light_gray == other.light_gray &&
          light_pink == other.light_pink &&
          light_salmon == other.light_salmon &&
          light_sea_green == other.light_sea_green &&
          light_sky_blue == other.light_sky_blue &&
          light_slate_gray == other.light_slate_gray &&
          light_steel_blue == other.light_steel_blue &&
          light_yellow == other.light_yellow &&
          lime == other.lime &&
          lime_green == other.lime_green &&
          linen == other.linen &&
          magenta == other.magenta &&
          maroon == other.maroon &&
          medium_aquamarine == other.medium_aquamarine &&
          medium_blue == other.medium_blue &&
          medium_orchid == other.medium_orchid &&
          medium_purple == other.medium_purple &&
          medium_sea_green == other.medium_sea_green &&
          medium_slate_blue == other.medium_slate_blue &&
          medium_spring_green == other.medium_spring_green &&
          medium_turquoise == other.medium_turquoise &&
          medium_violet_red == other.medium_violet_red &&
          midnight_blue == other.midnight_blue &&
          mint_cream == other.mint_cream &&
          misty_rose == other.misty_rose &&
          moccasin == other.moccasin &&
          navajo_white == other.navajo_white &&
          navy == other.navy &&
          old_lace == other.old_lace &&
          olive == other.olive &&
          olive_drab == other.olive_drab &&
          orange == other.orange &&
          orange_red == other.orange_red &&
          orchid == other.orchid &&
          pale_goldenrod == other.pale_goldenrod &&
          pale_green == other.pale_green &&
          pale_turquoise == other.pale_turquoise &&
          pale_violet_red == other.pale_violet_red &&
          papaya_whip == other.papaya_whip &&
          peach_puff == other.peach_puff &&
          peru == other.peru &&
          pink == other.pink &&
          plum == other.plum &&
          powder_blue == other.powder_blue &&
          purple == other.purple &&
          red == other.red &&
          rosy_brown == other.rosy_brown &&
          royal_blue == other.royal_blue &&
          saddle_brown == other.saddle_brown &&
          salmon == other.salmon &&
          sandy_brown == other.sandy_brown &&
          sea_green == other.sea_green &&
          sea_shell == other.sea_shell &&
          sienna == other.sienna &&
          silver == other.silver &&
          sky_blue == other.sky_blue &&
          slate_blue == other.slate_blue &&
          slate_gray == other.slate_gray &&
          snow == other.snow &&
          spring_green == other.spring_green &&
          steel_blue == other.steel_blue &&
          tan == other.tan &&
          teal == other.teal &&
          thistle == other.thistle &&
          tomato == other.tomato &&
          turquoise == other.turquoise &&
          violet == other.violet &&
          wheat == other.wheat &&
          white == other.white &&
          white_smoke == other.white_smoke &&
          yellow == other.yellow &&
          yellow_green == other.yellow_green &&
          r == other.r &&
          g == other.g &&
          b == other.b &&
          a == other.a &&
          is_known_color == other.is_known_color &&
          is_empty == other.is_empty &&
          is_named_color == other.is_named_color &&
          is_system_color == other.is_system_color &&
          name == other.name &&
          empty == other.empty
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [transparent, alice_blue, antique_white, aqua, aquamarine, azure, beige, bisque, black, blanched_almond, blue, blue_violet, brown, burly_wood, cadet_blue, chartreuse, chocolate, coral, cornflower_blue, cornsilk, crimson, cyan, dark_blue, dark_cyan, dark_goldenrod, dark_gray, dark_green, dark_khaki, dark_magenta, dark_olive_green, dark_orange, dark_orchid, dark_red, dark_salmon, dark_sea_green, dark_slate_blue, dark_slate_gray, dark_turquoise, dark_violet, deep_pink, deep_sky_blue, dim_gray, dodger_blue, firebrick, floral_white, forest_green, fuchsia, gainsboro, ghost_white, gold, goldenrod, gray, green, green_yellow, honeydew, hot_pink, indian_red, indigo, ivory, khaki, lavender, lavender_blush, lawn_green, lemon_chiffon, light_blue, light_coral, light_cyan, light_goldenrod_yellow, light_green, light_gray, light_pink, light_salmon, light_sea_green, light_sky_blue, light_slate_gray, light_steel_blue, light_yellow, lime, lime_green, linen, magenta, maroon, medium_aquamarine, medium_blue, medium_orchid, medium_purple, medium_sea_green, medium_slate_blue, medium_spring_green, medium_turquoise, medium_violet_red, midnight_blue, mint_cream, misty_rose, moccasin, navajo_white, navy, old_lace, olive, olive_drab, orange, orange_red, orchid, pale_goldenrod, pale_green, pale_turquoise, pale_violet_red, papaya_whip, peach_puff, peru, pink, plum, powder_blue, purple, red, rosy_brown, royal_blue, saddle_brown, salmon, sandy_brown, sea_green, sea_shell, sienna, silver, sky_blue, slate_blue, slate_gray, snow, spring_green, steel_blue, tan, teal, thistle, tomato, turquoise, violet, wheat, white, white_smoke, yellow, yellow_green, r, g, b, a, is_known_color, is_empty, is_named_color, is_system_color, name, empty].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        Time.at(/\d/.match(value)[0].to_f).to_datetime
      when :Date
        Time.at(/\d/.match(value)[0].to_f).to_date
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else
      # model
        temp_model = GroupDocsComparisonCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
