###############################################################################
# Code generated by wxUiEditor -- see https://github.com/KeyWorksRW/wxUiEditor/
#
# Do not edit any code above the "End of generated code" comment block.
# Any changes before that block will be lost if it is re-generated!
###############################################################################

WX_GLOBAL_CONSTANTS = true unless defined? WX_GLOBAL_CONSTANTS

require 'wx/core'

require 'base64'
require 'stringio'

# Loads image(s) from a string and returns a Wx::BitmapBundle object.
def wxue_get_bundle(image_name1, image_name2 = nil, image_name3 = nil)
  image1 = Wx::Image.new
  image1.load_stream(StringIO.new(image_name1))
  if (image_name2)
    image2 = Wx::Image.new
    image2.load_stream(StringIO.new(image_name2))
    if (image_name3)
      image3 = Wx::Image.new
      image3.load_stream(StringIO.new(image_name3))
      bitmaps = [Wx::Bitmap.new(image1),
                 Wx::Bitmap.new(image2),
                 Wx::Bitmap.new(image3)]
      bundle = Wx::BitmapBundle.from_bitmaps(bitmaps)
      return bundle
    else
      bundle = Wx::BitmapBundle.from_bitmaps(Wx::Bitmap.new(image1),
                                             Wx::Bitmap.new(image2))
      return bundle
    end
  end
  bundle = Wx::BitmapBundle.from_image(image1)
  return bundle
end

# ../art/1_bottom.png
$img_1_bottom_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAAsTAAALEwEAmpwY' +
  'AAAARklEQVRIx2NgGD4g7cx/hrQz/6nKZmBgYBqmQURFc0aDaDSIRoNoNIhGg4gagBHFawwM' +
  'DP9nmVBmYNoZCGOWCeNwS0U0AgDjl1CSPHv2FQAAAABJRU5ErkJggg==')

# ../art/Ainsi ça se passe.png
$Ainsi_c3a7a_se_passe_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAAsTAAALEwEAmpwY' +
  'AAAARklEQVRIx2NgGD4g7cx/hrQz/6nKZmBgYBqmQURFc0aDaDSIRoNoNIhGg4gagBHFawwM' +
  'DP9nmVBmYNoZCGOWCeNwS0U0AgDjl1CSPHv2FQAAAABJRU5ErkJggg==')

# ../art/bottom(1).png
$bottom_1__png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAAsTAAALEwEAmpwY' +
  'AAAARklEQVRIx2NgGD4g7cx/hrQz/6nKZmBgYBqmQURFc0aDaDSIRoNoNIhGg4gagBHFawwM' +
  'DP9nmVBmYNoZCGOWCeNwS0U0AgDjl1CSPHv2FQAAAABJRU5ErkJggg==')

# ../art/debug_32.png
$debug_32_png = Base64.decode64(
  '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' +
  'Vfx/vIXxbzHIEML53VwZAAAAAElFTkSuQmCC')

# ../art/disabled.png
$disabled_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAAsTAAALEwEAmpwY' +
  'AAABZ0lEQVQ4y5VTMW7CQBCctY1EmnBKRBEocMEPgtLxATr3lFS01BQUKWnyBOSCgjovoIpO' +
  'PCBSRBMZKSBkU2An2N4UwScbbCKmujvNzO3O3RKOeOr1mDQNN0IkRzj4Pg6+j1MsbBthEBAA' +
  'GMkhaRo+pcRtraaIgech8Dww8x+HSK2VLllMp9N7Zt4QEQzDQBzHiKLo7PbBYADHcZROVdBs' +
  'NgEA7+MxflCMUqmU2Wu4Eu12u9Bg22q16GW5/CgSv+o6bNumdOuUR+x2u9w56T8lzg/xkkmR' +
  'OBNiGlLKqhACb8Phv5loOWJTCPGVFneiCEa5zBcNpJQkpXwUQizziBPLSptQXgV3AGQYhoWl' +
  'TywLjUaDAXBhC4vR6Kp/oUJ0tlswM6r9PkzThOu6cBznTBDN5/kGz7PZhjQtM0zfux18182+' +
  '+8MDjPWak2lUYVTqdSZdR7lSUeQwCHDY749KAo6TuFutwHFMAPALdYaSdnNwM6gAAAAASUVO' +
  'RK5CYII=')

# ../art/english.png
$english_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABMAAAAPCAIAAACJJmN7AAAAA3NCSVQICAjb4U/gAAAACXBI' +
  'WXMAAArwAAAK8AFCrDSYAAABwElEQVQoz51TPW8TQRB973buy1+JfbGDIgHiD6BIKWmgRFBA' +
  'RcMf4NdRQIOE/A8QEg3IUioIyImNbe5sn323OxR3hMihIVOMRrs78+bNvKVzDjcyWS63WVYU' +
  'pYMCBBQAVOF7to2loYVzJEHWF6TnB6bVlk8fz16/OR2f58bQqZaFM+KRaGH1PHjfN6mhrcrV' +
  'RoQHtwbPXgr86Pjkzuh03utGaVpcTNaDfpTn1tB2HrxKDnwRr4KqMQEJw7A/kHJbfDvLQC9b' +
  'lhfTvN0OrAXo9ZouHb791ViLpzUWtMr0u0n46ImQdE5t6QpAFUXpqtLbwjJusSE0uGRY9xu3' +
  'aUQkkHt3O59Hs6QXBAHH41X3sLFal1mO6P5xlBgx3J1qHJv9RESL0Zcfs5+b+XThnDqHs6+5' +
  'qjaxXA+HC5Ma2J3MIDmMn77gbDyZfj/frHNW/KvFEEZdhNzAYhcSfqPZObotJp3wwztJF/Xx' +
  'lTFuyH8oQCGdvcbDxwIjMjjSsPEf6tnbpxHPE4G1BPmnrSq47v8G1tKIsNhKnmE1R020fkNS' +
  'VSuPSxGRUIjQs1u6TW43uZbl1Y3VU7oeq4KkGBPGvPFf+Q1pFtTdqJ5i3AAAAABJRU5ErkJg' +
  'gg==')

# ../art/er.png
$er_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAAsTAAALEwEAmpwY' +
  'AAAA4ElEQVQ4y93SsUqDQRAE4C8aRCFFiiDYC6b4UYSUaXwRS3tLCYj4AilSWCjY2wiWaYw2' +
  'sfARLAQLUbSxiyCxWeE47gdbXTiWm7kbdmeXPx+LBWwdFb7wUfOvQhvvKbiKG8yTc4GV4DuB' +
  'nSf8diowxX2oN7CDZ5xlAg9YQy/egX6QVVbqHmZoJQKD9EEz8lbkUSbQxhK6eAzsqSSwHKZd' +
  'Fwy7xGvdFH4EXmIip9F3KTolcCHyGJ84yPhhmNb6zU7sh0ljHOIq7sfZFHbrFukOt9jAJt5w' +
  'hJPg51HlJFr+L/EN6OcwHH42qK0AAAAASUVORK5CYII=')

# ../art/face-smile.svg
$face_smile_svg = (
  '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')

# ../art/focus.png
$focus_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAAsTAAALEwEAmpwY' +
  'AAABt0lEQVQ4y82TsYriUBSGv0RjIRkT8I6MsQgLCtYSEAux2t4pF/IavoQg1tOnHNhHEMQi' +
  'hWzljAZZVkUG2bUIQ3ZTJMPdYpVxVqfe/ct7zvk53zn3wL+Xrkt0Xf71qlzIVM7qMhmpcHcn' +
  'ub/HenhA0zQA1uv1JQNs25YAiZQ8OQ7M52T/eCsMBgNqtRqbzYZ+v7/0ff8jsDoWt9vt5XA4' +
  'BGAZx3x6fIT5HBUA+UowmUzodDpV13W/AdfAdaPR+Nzr9arnUMqhgxPV63XG4zG6ruO67neA' +
  'ZrOJZVnnTFK+Ihy13+8pFAokSUIul8OyLFqt1rs7UDEMuLl5N6Hb7WIYBuVy+W2gXAbTJMvV' +
  'FZRKZDIZbNvGcRwWiwX5fJ44jjFNkyRJKBaL5HI5AH4+P0M2C7p+GCKgqipCCGazGZVKhSiK' +
  '8DxPCcOwpGka2+0WIQRCCEzDOEE4KE1TgiCgWq0yGo2+ep6nADiO8yMMww8AQRAQBAGr1erE' +
  'YLeDxQIpJVEUYVkWvu+/WZnjOKswDJ0oioiiiF9xDEEAux0qaQq3tyiKIgABiOl0euknfjnG' +
  'FRC8vECa/ge3+Bu3SZx0Dp9YSwAAAABJRU5ErkJggg==')

# ../art/fontPicker.png
$fontPicker_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAACXBIWXMAAAsTAAALEwEAmpwY' +
  'AAACrUlEQVQ4y63U30sUURTA8a/r6oaSv9OEotJMDX3xwYwgikDIh9LwjwjqIeyh/yCIoh/Q' +
  'Q9hrPQRFVpJmYWRUIFpG0W5Zku3SqmtJLTu7ztw7pwed1XE317DzdOfO3M/cOefMxbZtsW1b' +
  'tNaitRallChliWWZYpqmjE1EpH80JIlEQhKJuMTjhhiGIYYRE9u25dKVC0Ka8AKILNwTkcWx' +
  'IAJK2/SOTlNekLs4J65nVwvvcmj5GITn/ll+RE2UpVLQTLAnHSoi/DJMPn2PkuuB8JyBqfSa' +
  'UQBPOhSEvjczHGrcROlGL5ZlM/UzviJVkgmWFfkTvkUM5k3NjvI8ygtysZQiOBtLs4GMqVjK' +
  'qy1C7+gUbU3liAiVRT4sSxOcMVK+KmPxHFREGPk8x9YSH8X5OYgIm4s3oJQmGInS1T3oWnzt' +
  '1JHV4CU0YWoejIRp2VnIk7EpbNsmlrCwLEVodorm+m0c3bcbgHsvPnD88n3qszO2m/D47TRN' +
  '2wupKNqAiKC1pjDPS0WRmUQD4RhA8gXD/r/ADhr5Pc/YxBxnjtWS7SGZy9PXB11oJGomFzs4' +
  'F3uku6s9K6UrbIGbzyY50FDmQp0CpUMjUZNAOLaEp0vFS/8Pvk7HOHG4asXPsgD/iiveBaOM' +
  'T8dci2sq8qks8qVvt1cfZ7n1fJJ4wuTR6zDzpnIVE2BgOEBrYxk1FfkutLWxjIHhQPodt+wq' +
  'ZU9NiatHnRb05XjoqFPcDQQBaG2uSy500LHxIJ25t+n+l0NIRGjZexB4moIvR7fU72fgKtJ6' +
  '8kaygFmylhMF6O+7w92A1zXnoNUNzXx5P0zIP4SDe8+dP8tao6Oh1nWtaSfk7wGguqF54UsW' +
  'd57FOqPv4W3JnuhJ2fm64ZV4yD+Ermr/P/ByXFe1c7it87+5SdwZ/wEbdB5O3H8yKAAAAABJ' +
  'RU5ErkJggg==')

# ../art/fontPicker@1_25x.png
$fontPicker_1_25x_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABwAAAAcCAYAAAByDd+UAAAACXBIWXMAAAsTAAALEwEAmpwY' +
  'AAAE5ElEQVRIx72W229UVRSHvzNzznQ605kOY8kwQC/IrQjWRNGoiYmJiUYSnvQvMDExvvju' +
  'i+/GxPBCeOLFR4kxXoqJ8mC8QRANKEgpMjCFlpm2dC5nzm2fs5cPp5cppVAMupLJZJ3stb69' +
  '9/mt3wxaa1n6RFEkURRJGIYShkrCUIlSgQRBIFpr+eHijJyZqInneeJ5rriuI67riOM44jgd' +
  'iaJIPj7ykXCfMAFEVtaISFcuiECkhc9/rmJ7IduK6cXnQndtd48HArthXdkyrCdlUZ1zCVRE' +
  'X09izfqNwgDMeHHcfKU4zkUEFUZ8e75Gy1H4KqTlWGit/zU0cV9YpGm6ATdmO2itcf2QRsdH' +
  'RfpfnzCx1PxuGAg9VpJvfqvz0r7HKG9KkUqC60fUG95yzUqdbBTYLZCVBpaV4nylAcC2Yppi' +
  '1sJKGni+Yq7prRHWQ1wpa3YoQBSFNDoBAH1pk0LGJJU0cIOI2aa3ChZXsFGVdks8Llah5tSl' +
  'OirUHD5YQkToz1ikTAPPD6k3fNquj4ER38pij0wmuzGVrhwuLrxYbSFaU+pPke81ERGKOYu0' +
  'lcDxFNPzNh988uOaZh++/dpGgCtXorUQhJrPztxidGsWRHP6skJEaLsBd1ouru9Razgc2FHm' +
  'qV1lirkMthtw9vIU7x//jt0bm8MY6quIyRmbkc0Zcr0mPVYCLUKkNWbSoDcl9GdgSzHHs6OD' +
  'ZDIZEskkfVmLZ0cH8QLF5O29GxNNpIW2q/j0l1vsLGUYHshQKqQZyPewOd9DoBRpSxguZRnb' +
  'WaY8UKDlaSZud2i6EeWBAvt3lBkpF3n3yJfyQNH4KmK+HWAZwthIP7l0EsNgWfJfnP6LZNJi' +
  'bGeZF/cPc3mmw2w7VnG9HSDA03u2YSYNRAvvHvlSjr532FhXNBenWpy7eoeXDwzQaxnLql2a' +
  'S4D9IyWe2rV9FWwpZtsBWoSd20skDLhRW1j/HV6vO1Ru29iu4uWxrXied5fVxZtSkabhKCqz' +
  'LtfnHAQwFrdjAIPFXtJWEj9cfy4TlmVxvrLA1ek2LUcBcePYoGNYGMXfc02H2YbNQJ8FAo2O' +
  'YqGjaHQUCBSzFk3bobZgrw/8dbJOveERaU2+N8mp36dQSi+fKv6J0vSlhPlGk5u1ebb2m+zY' +
  'nKGYtQDI98b51oLJ7J0GM7Xa+mMxNlzgyaH+e/jiyrtLmQme3645U7H585rC9RWvPjdKyjSY' +
  'txW5tMkLuwt8//tVJm/Wydl/8Ub6PEfvATRsuy1Ljbthd7uPUgGVGxX+uDbDuRmLZ/YOsW9H' +
  'mUJfLx0v4MLkTS78fZN9+ix78h0e27xNz1UvJF555/gqpRpKKek239Wmv/p5p9NmanqG039c' +
  'odLJU8xn6LFMVKSZa9iMuD/x+CYYLG+huGWYqYlfadYrdEPNiSuXeZhw7RY5aZI1EvgtG59Y' +
  'olkDtuc0WSuBYUAiaVIa3o8OA04de0uWoOZXX39RW3Gc2FIXc93lRvruNQcP5EtrtzOGVx1n' +
  'VnUQMRgefRoV+Ahw6thbEoXBFoNHHCfHT0iqOg5AeffzDO46QLsxz+0bl1iYnlj9r+0RxVAw' +
  'dKiaqo5Tq5zDQOg06zTrFYKhQxj/AZCT4yeeAC6mquP09JfxmzMEQ4d4/dCbxn8CXIQWgIVU' +
  'dXwZxv8RJ8dPrBq0fwCybUnKnAtvjwAAAABJRU5ErkJggg==')

# ../art/fontPicker@1_5x.png
$fontPicker_1_5x_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAACEAAAAhCAYAAABX5MJvAAAACXBIWXMAAAsTAAALEwEAmpwY' +
  'AAAFlUlEQVRYw8WX348b1RXHP3dm/GNtZ9frX9HiXTZkRfZHiYqolEaiqqgqrbR5oa3yCP9B' +
  'JIRA4jHhHSEheII3lEcqtQplUQT9BUFVSto0BeM06zZe19hre+31+Neu7bmXB6/HHry7rFOF' +
  'HmmkO9cz537mfM8591pIKRX7ppQ9HBore6wUSGmR/LpOvrLHMz+IHPgMKAzDwDBcvPHm67z4' +
  'wsuCI8zgSBtASdUDe+1aijMzfga8w+A8kBmHRcEZid5cP2jZ8i5+j24DOJ/v348B8e3FBkDO' +
  '8KIkr7+fYrvWpt4SeA0xJMFBH3B8Cm00pKPh3etYvHYtxemYD11Atyup73awpEKqg98FMQ7E' +
  '4IsPi8puxwJgu7aHLqBjWdRaHSwpbYlGozJGJHqLD0swyIH+3PrfC5x/PMjPz0YJnzDwGIJO' +
  'R5IvtxwS9J8fNye0wyTojSVKKSxL4TE0gn4Xfo+OoQmklJjNzqHVNFZ1HNYP+g4zpRZdS/Lk' +
  'qUkMXcPv0XHpYElJtdk+MJEfIDGdIewDSNW73r+V58JTMXuxmaAHn0uj07HIFJok0pUhCccH' +
  'sPuEM6uVnduf3S0DMDlh2DIFvAYuXSClwmy2SWxuky2V+fDWf2wPq0+dYnn+JMvzJ8eTY1gC' +
  'pRR/3ahwJ20yF/Kga8KeD0wYuAwNKSXVxh6ZYh2zWXc4vf63+7jcnnEgcORE11J0Lcm1z3PM' +
  'hjxoQvHR7byd/Y3dDrntBp1Ol/+W8sQjUyzNz/Ps0yu209/eSHA7tcXv/nKXZf3YbXsgh6EL' +
  '/vV1g5mgh1DAjd9roO1HQSqJJgwCEwK/1yIemeKxR8KsnVukVB9UyrNPr7B+824vvJVj9Qln' +
  'X5BKkcrXmQl6CQXcBLwGEx69d7l1Tky4OOEVBLwW8WiQtXOLAJRqbfsCWDu3SDwaxJz+Ea++' +
  '+4cjM1Xs7rZUX28hBOu3cny+UeaVXy0iBGgCR/d86Z3fE49MEY8GbQmSuQbF/cUBoifcLM34' +
  'bWmypSoAl59/RhzZrBTw8Z0t9joWp2I+hHB2/+EKikz5WZyLApAqNGm2LYfTZtsiVWgCsDgX' +
  'JTLpI1vc+Q459m/u3N+xITQBQozuKQDhKR9Lj0ZJ5hpUW10ae06Ixp7FTrNLMtdg6dEokSn/' +
  'd5eopml88mWR+1sNHp/x8+MzoUO2dbW/q0qqrS7/zNQoNzps19sjjkN+F+GAm5mgh92uPDox' +
  'NU3j43/k+XKzSrdrsW3ukcrVsSyJlIOXLdkrX4BKrUUqW2Ih5uORaQ8hv2sEIB7yshDzkcqW' +
  'qJjNoyFufFVgI1fji/QOna5FsbrLRq5G1+pv08o+VXWtHlTZbPQgTvqIT3sJB9wOp+GAm3jQ' +
  'y8LJHkS5djSEcf5MmPNnwodsQoOjmq4JdE3jl0tdkqUdbt8zAViIR1g9G3E4XT0bIZUtcf3m' +
  'JrfvZVjRE/zEneDt4+4dznPA6J4yO3uKtlFFUSVfNnEb+mDhQtOWILNVIV82WdETzAY6TPrn' +
  'uf7Wc5eBP61euvrHkeo41hlzf3527jFOzwRZjkjy21U2t8qksqVeVGK+XtlmS2wWKuS3qz0I' +
  'f5vJ6DzAFeBnI81KqQc9qMOH678mWdL4qqSN/LaiJ3oAyz9lOhYnFIuT+uImZimNWUyzeumq' +
  '3YbEpzf+rAYHU8U44417CVrCR0v4SQ6BLEUkMa1IVBSZMloEo3MEo3MooFrMsFPIYJbSV1Yv' +
  'XX0VwPj0xif8r/bDJxZZjny7F4SRhDH//RtQIJXGwhPnEPTGZil95fpbz2mrl65eFjxkW//g' +
  'PSUqSbRK8lBpHjpEH0SrJB3S3E98hllMD//5ebi2duGikNNLmMU0O4UM5ULWBrBO/+L7icRB' +
  '0vQB1i5cFNr3CbF24aJQ00sOAP5ftv7Be47e9A2vPJLA11/iiwAAAABJRU5ErkJggg==')

# ../art/fontPicker@1_75x.png
$fontPicker_1_75x_png = Base64.decode64(
  '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' +
  'QmCC')

# ../art/fontPicker@2x.png
$fontPicker_2x_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAYAAAAehFoBAAAACXBIWXMAAAsTAAALEwEAmpwY' +
  'AAADZklEQVRYw+2Y20tUURSHv+0tNci8pF2M7qmlLz2YFUQUCgaRXehvCAoiC/oPggiiKAjs' +
  'tR4CJSvJbhgVFQyaRtHYTdIRb2OZilnqzOlhnS2eo3Nmmgwdx/Uys9eePfucb63z22sd5ff7' +
  'DSaYYViGE8aGZazd79v7Aejq+w3Ars0Zjr/X/sTEJAAuXb4AwMkTpxUhWAwRZnHByE4mLKMx' +
  'nx+AmoZuADIXJQQgGyhi4VnkEQ5EMJBfj5+7ewH4NjgixEfHQiIbfYRDJav9A8NC9GPHIAAJ' +
  '5i139v0EYGTMB0B8bMy0ko3kHA6NrPbXNvYAsKdgiahEfQcA3h+iGl3fhwHIzkgO8ixEr0pM' +
  'rQptXsnR3yOSo2syky36+3ZMVMLTOwTAivSkIBGLPpWYmqzfdNQ0dAFwZPtyy++XLV4AwOio' +
  'kPf0SCSKcpyfhejLYTtZ7a//3AfAyjQhmbow3jK/NDVRTjpTfz1e0efyijrHja+e2IdSKnII' +
  'h3OxFh22k/1lqsHd+k7JyfUpADxuklz2+0V3h36NmjksKtHeK/OFeasA2L9jk2XD2y/eA3D0' +
  '4h0A8mKjVYcfvZE6d8tqIZu1ONEy7/NJBFKS48z5kSnJNncOWTbUfmXu6HJHCOFwxW2SDnsH' +
  'pDdrahF1OHMwBwCz+Jqkq6eu1TmS9Zr1st3suc2FagOgorxMzc0c1r3zjaet0v3mZziStQc1' +
  'VLJ2v17ncrfOcZV46f4GwNduIXSsdG2QTsRKuH9YdPitR066T91DjhtvyFpoqUXmrg6/+iDd' +
  '783nbdKTmSfWg9dywu0uyJTeLT5mypNQ20NXMwAlhbkWv520JltckIGasG721xLhEi7amA7A' +
  '1g1pjh2CvapbYBI/kCsRudXssfyxnfS4v0DU55GrGQNo+iTrDidUAlAx/+bHphJF23YBCoMn' +
  'qAmkda1QXJg7/l2ZZAEaTbKHEqpQGGTn7ZRn4Qo+IKbk+HXl+DLwX7NRBagVlO3TmLTa+Kuo' +
  'K2O6XsmYdr+2ysxpZxZ2suvyCwH48s4ldbX7meS8jfQMqkR4nOLOnT/7Xy7oQH6O47yPMpNk' +
  'tcWvSY/r+xW5M0064lRCzfQF1N6rNABiW4R0sJyeJzzdpDVZ39qyecL/hbQmW7r3cGSqxKy1' +
  '2nuVhqYd0dXaH3T/BvkU1zB3AAAAAElFTkSuQmCC')

# ../art/french.png
$french_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABMAAAAPCAIAAACJJmN7AAAAA3NCSVQICAjb4U/gAAAACXBI' +
  'WXMAAArwAAAK8AFCrDSYAAAAn0lEQVQoz2P8/Pnr7z///v37zwADbGzMLMyMDEjg/5/f/3//' +
  'gHMZmZgZWVhZ3r77cef+56/ffjP8Z2BgZGBgYNDVEhIVZoebxMjA8Pft81/XjjAwMDD8/8/A' +
  'yMjMzceqqM9y/+GXZavuPn/5DW5kfqYWP78Isp0/7178PK8czmURVxCIqGZiIBeM6hzVCU2V' +
  'Dx6+JZxu3zzBTLeMZOcVAMZLUf3cV8UEAAAAAElFTkSuQmCC')

# ../art/japanese.png
$japanese_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABMAAAAPCAIAAACJJmN7AAAAA3NCSVQICAjb4U/gAAAACXBI' +
  'WXMAAArwAAAK8AFCrDSYAAABHElEQVQoz52TzWqDQBSF752RMQUF0fwUkvdwH7LLtvu+WZ+h' +
  'm+wke1+jpLQaFUGhmSHX20WaYFSSktnNGT7mzjlnsGkaeGhZDTNR0+YREZj5sgUAxJYAQggp' +
  'hUVH+jlo6t/MzMyICIidEynE08i2Bicho02RmyxV46nyA6nsgWn70uH7c7/dlHFEdSUd1wtX' +
  'k+V69Dy/Q5LR++0meX8zyQ6AAVB/fQDA/OVVXN8sOm8zRV7G0RkDADbJrowjXeTQMqlLMrPJ' +
  'UqqrM/YnU12ZLOUbJCKq8VQ67imLiywdV42neG3y9bSIth944UrNFmcY1WzhhSvlB514ug4J' +
  'ZU+WawDoeNsPBrU2/SbczvPUhGHyPx3CI9FjvcWH/8ovkz2pKOW+1XoAAAAASUVORK5CYII=')

# ../art/left.png
$left_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAAsTAAALEwEAmpwY' +
  'AAAAUElEQVRIx+3QwQ2AMAwEwU1ESanJRaUm93Q8EDSAEwl099qXJQ/8Z5EiUqUN9G0PCCRQ' +
  '9d2+lNpEJjKRiUxUtOOOFnnFHDwvztFe9Vaiz+4EfTJgngsn2HoAAAAASUVORK5CYII=')

# ../art/no_hour.png
$no_hour_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAAsTAAALEwEAmpwY' +
  'AAABDUlEQVQ4y52TMWrDMBSGP4U0NyhZAx08ZoghFxH0CCFracB3SC+QG3QIGT2YXCDwvHgv' +
  'ZE26BLqlw+tQW0iqmpr+YGRL/j6eLT2joABms4HxmCCnE8ksFt8QYDoBgFmvwxcPhySv2627' +
  'NwC+5CWWRHlerXzYGGf1JJ/XK03T/IBneR7AAINuohZxi3ejEWVZArgxBQcRkaW1VhXcZa3V' +
  'oiiCOWBJStBmmmXZhw9E8JSeqRJw/4jI/b8FIjK58Qk3QSMijz4gIioiKYn7iQPP8TTL89fu' +
  '4f18JrXFrUSJTUGJqtR13f8gxfBvSVTCMOiD/Z6H4xGAt8slKcm9+hXUBO08n//djVUFux3a' +
  'VvoF3WivIiuis94AAAAASUVORK5CYII=')

# ../art/normal.png
$normal_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAAsTAAALEwEAmpwY' +
  'AAABrklEQVQ4y6WTsW7aYBSFP9eGgXiwVFpFgqGoRE4kpsoDAwvPwFIpvAWPwRNk95BOYWJH' +
  'LAz/AyCHAQ/YITWJ41hCBcHfIdgktdMOPdP/X91z7tXRPQoJrq4kmganp2mJ52d4eiKDXg/i' +
  'WAHQ0qKmwc0NnJ8fG+/v4e4OpHz5K8rxndCSx/XJSVleXgaKoqBpGvv9nt1ulzO8h3eY/kag' +
  'Xq8DoOs6pmkSBAGu62YECoVC/gYJHMdhOBzSaDQQQgBQLpeZTqe0Wq2MYLqKEEKxLEs2m81Z' +
  'u93+ulgs0HUdgCiKqFQqjEaj2WQyOTvw5BuB1+h2u1LX9dQDVVWJ4xjbtmvAPHeDPJFisQjA' +
  'ZrPBtu3PwM8/+7Q8shDik2EYhGHIYDBgPp+/Nwc1h/zFMIzFdrulVCpRq9WQUrJcLs983//x' +
  'VxOBb4ZhCIBqtcpqtcL3fQA8z6Pf78/G43G+iUKIj0DwrzvodDq4rpvyPvCfSE2crddIoAT8' +
  'Wq0Iowhvvc4Qtu9l4bvjBKgqmCbc3r4UHx/h4EEKy4KHB5mk8XgHFxfZOMcxhGE2iY4Du50C' +
  '8BtZArk344GL9AAAAABJRU5ErkJggg==')

# ../art/re.png
$re_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAAsTAAALEwEAmpwY' +
  'AAAA40lEQVQ4y93SIUvDURQF8N90qCDIwnCs65IGwbgsWExmk80iqzaLH0GwGAU/giAabGMM' +
  'LCumzaCiTRBE+Fuu8PjvbX2ect87777z3j0cZh7zGW4DNXwk3Cq2sIK3nFAdBS6jFnGhinP8' +
  'JHwfa5MEntDENio4wzt2Y9/CAwYhPiZwknCL+MRR6bFW9O4oq2CUrNexjEPsZ8bexE11isFL' +
  'UXsYls7u0M39IMVL1FtcTWqamyLwjEcchx9/2Atj2zkTD0oi7TBygFNc4CtGqKRBKvCNe7wm' +
  'AkNcoxG5WIhcdCIb/wG/cJ0usvGcmUcAAAAASUVORK5CYII=')

# ../art/ribbon_button_hybrid.png
$ribbon_button_hybrid_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAACXBIWXMAAAsTAAALEwEAmpwY' +
  'AAAAcklEQVQ4y+2TUQqAIBBEx+hG45n0TNuZ9Ez2EQYVmRvsh+D8DvsW3iowYx1HhmIBXgEg' +
  'JbEBA4D38VHWhb86MhSLDOwYAFzM3YNF2OwXq3dsBr6oYN4Uo9IPzgxNh5obvKq4QzTQT8cV' +
  'poUeXkf7eTNndpkXzEKyjAT5AAAAAElFTkSuQmCC')

# ../art/toggle_button.png
$toggle_button_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAACXBIWXMAAAsTAAALEwEAmpwY' +
  'AAAAx0lEQVQ4y2NgGAWjAB0wnr/55r9h1FqqGnp+WTADI4PxzP+nd6RR1WBTj1kMTAwMDAx/' +
  '/mPHpqKMDKaijCh8dHl0PaxMEMNZGBgYGDiZMW01EGZkuPD2PwbbUgzBxqYXxsdpMLo4jH3z' +
  'w38GdQFGhpsf/mM1mIsFyWAYBx0gi8PYuGgYIBgUuFzMyczA8Ob7fwYRTkasLmZBNpgDi4u/' +
  '/P7PwMPKCGfDAEwtTJ4Dh29ZGBgYGNiYsEv++vufJD5dMsgoGAWYAAC/kFXGLn0vtgAAAABJ' +
  'RU5ErkJggg==')

# ../art/wiztest.png
$wiztest_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAAHQAAAEECAIAAAB2rYcFAAAAA3NCSVQICAjb4U/gAAAACXBI' +
  'WXMAAArwAAAK8AFCrDSYAAAEeklEQVR42u3bwa3TShjF8ecnxNNdZBMJmkgDdwUFpANoIg1E' +
  'gNyAm4AOUsBjRQNpAqRssriCjVkEIrEYZM8k4/H4d9a27/XR3+d8X2Q3fd//Q/fRvyxgLnOJ' +
  'ucxlLjGXucwl5jKXuZSgZ+mXaJom7sTqfzNCbtnk/tb7ux2MXLqruX3/ru/f8RS5zFVo0Q02' +
  'ZIab9biG3BrIvWA4ajdZhrlNBTcqFpYbC6FneiTVfeR5yKWEQrtUUiCCm+YDQ5GbSc2QKf0y' +
  'LfQBcptx3A/N3MsfsUTQ3ZaIPjxCXLlb5qSMXOb6bWFghSKXmFtVLKSV/tJGBuSWQW4Kdsv8' +
  'IAu5U/+2QMhlLnOJuZUtEXfQdruNO/FwOCAXudPr7ZiDP8pchVaMDoc3h8Mb5hJzFVp0gw2Z' +
  '4aYd15CL3F8YjtpNlmHutoQbFQtiIfahDnEdeZktcpGbuZICEbzdfpK5NL9R7GN95iK3anIP' +
  '4RHiurzOdFJGLnPFQhZtkUvMrSoW0kp/diMDcqsgNwW78l+uQW5uefkZucwl5jKXucRc5jKX' +
  'Cl1/b6i2beNO3O/3yEXu9Ho95uD/Za5CK0b7/av9/hVzkUsKLbrBhsxwNxzXkIvc+MYbtZss' +
  'w9z25jeq0MRCxoc6xHXkZVrkIjdzJQUiuG0/y1zkVrEmIBe5c5si2j+X1xImZeQyVyyUqha5' +
  'YoGqioW00p92ZEDuUslNwS7zyzXIzS0fnCCXucRc5jKXmMtcG1qx6rou7sTdbodc5E6vxzEH' +
  'f5G5Cq0Y7XaPu90jc5FLCi26wYbMcNHjGnKRe8vGG7WbLMPcLvFGFZpYmPShDnEdeZkOucjN' +
  'XEmBCO66L+X8p8hFbsKagFzkzm2K6P5cXvNPyshlrliYjzrkigWqKhbSSj/nyIBc5N6iie76' +
  'cg1yc8s3EchlLjGXucwl5jKXucRc5i5AJf5wczwe407cbDbIRe70ejnm4K8yV6EVo83mxWbz' +
  'grnEXIUW3WBDZric4xpykRvEcNRusgxzj/lvVKGJhds91CGuIy9zRC5yM1dSIIKPx28yl+Y3' +
  'in2du7nIXRi5m/AIcV1eZzEpI5e5YmEiHZErFqiqWEgr/cJHBuRWSm4KdqW9XIPc3PKpFHKZ' +
  'S8xlLnOJucy1od1Kp9Mp7sT1eo1cmo7c33oYc/CTzKVizF2vH9brB+YScxVadIMNmeHKGdeQ' +
  'u1ByLxiO2k2WYe6ptBsVC2JhzEMd4jryMifkUrZCu1RSIIJPp6eKzUVutaPYU93mIrc6ctfh' +
  'EeK6vFYwKSOXuWLhbjohl5hbVSyklf6sRwbkzpbcFOzm9XINcnPLNxHIZS4xl7lGsfvpfD7H' +
  'nbharZCL3On135iDv8tchVaMVqvnq9Vz5hJzFVp0gw2Z4bKNa8hF7t8wHLWbLMPcc+YbVWhi' +
  '4aYPdYjryMuckYvczJUUiODz+YfMpfmNYt9nbS5yl0fuKjxCXJfX8idl5DJXLEynM3LFAlUV' +
  'C2mlX/LIgNx6yU3BrqiXa5CbW15+Ri5zibnMrUI/AaER8eI3PF3TAAAAAElFTkSuQmCC')

# ../art/wiztest2.png
$wiztest2_png = Base64.decode64(
  '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')

# ../art/wxNotebook.png
$wxNotebook_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAACXBIWXMAAAsTAAALEwEAmpwY' +
  'AAAAY0lEQVQ4y2NgoCX4jwcU9OwlWgzZTBYY4+bNmzgtnjlzJpqIKlYxZMBEq1CgmcGMsDC+' +
  'evEkVgXa+uYkGVjYu49hQokzIwshhbgsHLCgGDV41OBRg0cNJgbAS7c5e74yDAkAAH7rWT+i' +
  'sfNfAAAAAElFTkSuQmCC')

# ../art/wxPython.png
$wxPython_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAAsTAAALEwEAmpwY' +
  'AAABQUlEQVQ4y42TMVLDQAxFnwMHoKTMDXKDIB/CJb5CTsCgDG3uwBB3OQIUckpmSBF6MzEH' +
  'IG06UXgd27ET+DOa3dXO/pW+JOhCVNWTJDH+idHJYwNYrVYiIq6qDsjfNFOMBS4zcXd3VXUz' +
  'czOrSS5CWOC8BUsrMzN3d5eZXIziuue5r5Z4E8NzOO8xlkRDBFfAjgPCDWNug3cLTIIR1owI' +
  'yIcIKErK6JXyPWNNxpoD8M34SABQAiUvgAbP7nhXNM5T6FGflEqLFGdBo0sBUpwRKUkw+2kJ' +
  'PKXqj7S1vwA1w91x+QgEzc/aiaJX1lBK98q0aEVRp1ulpKOBnrC6lDXyfed4d66VYcojk1DG' +
  'JfM8rx53CNIQ4f0Qwbib0/wL4k3LkQG70AtP5IBGvZl4GBBmC3wCS+KhZurXPm1mIoh2dhZ+' +
  'Ad+Nn/PyqjymAAAAAElFTkSuQmCC')

# ../art/wxPython_1_5x.png
$wxPython_1_5x_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAAsTAAALEwEAmpwY' +
  'AAACr0lEQVRIx62Uz0sUYRjHP+sPSOiweEkicEDsIrjToZPQjhc7dGitW6Cup/SwsJt6dj2X' +
  'TCBk0GFW+gPsbId3FSo9OSsIYSwzXrQgdkeUTsbbYV63cXbGVesLL8877/v84P3O83zbiYae' +
  'TqcPNU0rdnZ2HtVqtU3+I9K5XM6RCpZlSWA+sP4JOuAIIaRhGNKyLCmllLquSyGEFEJIwLxO' +
  'Yo0BtnmCZA5pvjPPHiANw5D1el2Wy+WGBYqXTdyh7AST6KT8j8JagaOFIwBc18XzPIQQ9Pb2' +
  'XpOWDA4fkHwMrFd/Vz6fb7xIf6pLMjiKzpZIqAKrTKBxM8arCrxR+0VlZ4EKiVYF2oHvfCXJ' +
  'fQx6Yry6gYdqBfGZfcC+qECbsitY2CxHeCzHRI4AkL0MRWcs6Fvw+lnYI0+KOyTpAW413dns' +
  'Mgq4QFqdVgDvXIGqfzncF91+WUDjAWk0DMYCNzvADAuAwxglALYoscdkuE0NoBzzSj9wA40N' +
  'NE4QTDf5VNhRtL0gyxQeUABoq/rttg88bsXn0BDmdgm0G+pgEJhjntsYVEjwkiInwAAGoF11' +
  'XuaFQEqJLFZDM5NCNpjI4LDIlaYdQORyOPW6X8D5hdQ3AwXeEtQowSqNYey4IGmSfky6yDIO' +
  '3ceQTCrh6oJkMLIPgHvqa5gikhQaIbfz6MfkOVlSqluuAtk8aGGYzKjkEVg5BPu46TgVNXht' +
  'MdJtqGf7OjTDeq2G63ngnUK57ttQ+iRzWAwiG3oVU8CX7vNSYSwtUbJtKOxB6SAUsaZoGVFi' +
  '+APYZx1wO1ryOQ1MIcigFX6DfRDhswb8pMCs6qRTbHbJAm4iUhrymDwieWHhKnACfMJlldE4' +
  'VY3T8yzjWAyqXxfEe2W/sMI3XCUx5ZZqGgGDu0zQFeqMCsNqZwdVMw5/ANThGfS+jW3VAAAA' +
  'AElFTkSuQmCC')

# ../art/wxPython_2x.png
$wxPython_2x_png = Base64.decode64(
  'iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAElBMVEUBAAAAAAAAuwD//wD/' +
  '///dAABpI5D7AAAAAXRSTlMAQObYZgAAAJdJREFUeNp900sKxDAAw9BKTe5/5SFDawjEzVYP' +
  '0+/1HuD6Oowx+O5L1BkYMEabAVda/ShQ5Q+gAoEsnLqZkQ4EtIqcDqp4CA1cEwDqwswSRgBb' +
  'j3lA7iYgJAuvmJvgzlWQia3fESgF1AlW7xNgwGkC/QTYQbqkCwcAASIYkOfH20U9gXTSA3R7' +
  '4wD9q0o6Cii/V60hHOoPwvkD1WDE+MAAAAAASUVORK5CYII=')

# ************* End of generated code ***********
# DO NOT EDIT THIS COMMENT BLOCK!
#
# Code below this comment block will be preserved
# if the code for this class is re-generated.
# ***********************************************
