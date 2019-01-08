class AnswerPrint
  def initialize
    @answers = [
      "30-32 очка. Вы явно некоммуникабельны, и это Ваша беда, так как больше всего страдаете от этого Вы сами. \n" +
      "Но и близким Вам людям нелегко. На Вас трудно положиться в деле, которое требует групповых усилий. \n" +
      "Старайтесь быть общительнее, контролируйте себя.",

      "25-29 очков. Вы замкнуты, неразговорчивы, предпочитаете одиночество, поэтому у Вас мало друзей. \n" +
      "Новая работа и необходимость новых контактов если и не ввергают Вас в панику, то надолго выводят из равновесия. \n" +
      "Вы знаете эту особенность своего характера и бываете недовольны собой. Но не ограничивайтесь \n" +
      "только таким недовольством – в Вашей власти переломить эти особенности характера. Разве не бывает, \n"+
      "что при какой-либо сильной увлеченности Вы приобретаете вдруг полную коммуникабельность? Стоит только встряхнуться.",

      "19-24 очков. Вы в известной степени общительны и в незнакомой обстановке чувствуете себя вполне уверенно. \n" +
      "Новые проблемы Вас не пугают. И все же с новыми людьми сходитесь с оглядкой, в спорах и диспутах участвуюте неохотно. \n" +
      "В Ваших высказываниях порой слишком много сарказма, без всякого на то основания. Эти недостатки исправимы.",

      "14-18 очков. У вас нормальная коммуникабельность. Вы любознательны, охотно слушаете интересного собеседника, \n" +
      "достаточно терпеливы в общении, отстаиваете свою точку зрения без вспыльчивости. Без неприятных переживаний идете \n"+
      "на встречу с новыми людьми. В то же время не любите шумных компаний; экстравагантные выходки и многословие вызывают у Вас раздражение.",

      "9-13 очков. Вы весьма общительны (порой, быть может, даже сверх меры). Любопытны, разговорчивы, любите высказываться по разным вопросам,\n" +
      "что, бывает, вызывает раздражение окружающих. Охотно знакомитесь с новыми людьми. Любите бывать в центре внимания, никому не отказываете в\n" +
      "просьбах, хотя не всегда можете их выполнить. Бывает, вспылите, но быстро отходите. Чего Вам недостает, так это усидчивости, терпения и отваги\n" +
      "при столкновении с серьезными проблемами. При желании, однако, Вы можете себя заставить не отступать.",

      "4-8 очков. Вы, должно быть, «рубаха-парень». Общительность бьет из Вас ключом. Вы всегда в курсе всех дел. \n"+
      "Вы любите принимать участие во всех дискуссиях, хотя серьезные темы могут вызвать у Вас мигрень или даже хандру. \n"+
      "Охотно берете слово по любому вопросу, даже если имеете о нем поверхностное представление. Всюду чувствуете себя в своей тарелке. \n"+
      "Беретесь за любое дело, хотя не всегда можете успешно довести его до конца. По этой самой причине руководители и коллеги \n"+
      "относятся к Вам с некоторой опаской и сомнениями. Задумайтесь над этими фактами.",

      "3 очка и менее. Ваша коммуникабельность носит болезненный характер. Вы говорливы, многословны, вмешиваетесь в дела, которые \n" +
      "не имеют к Вам никакого отношения. Беретесь судить о проблемах, в которых совершенно не компетентны. Вольно или невольно Вы часто \n"+
      "бываете причиной разного рода конфликтов в Вашем окружении. Вспыльчивы, обидчивы, нередко бываете необъективны. \n"+
      "Серьезная работа не для Вас. Людям – и на работе, и дома, и вообще повсюду – трудно с Вами. Да, Вам надо поработать над собой и своим характером!\n" +
      "Прежде всего воспитывайте в себе терпеливость и сдержанность, уважительно относитесь к людям, наконец, подумайте о своем здоровье – такой стиль жизни не проходит бесследно."
    ]
    @psyho_score = 0
    @result_print = 0
  end
  
  def print_result(score)
    @psyho_score = score
    puts @psyho_score

    @result_print = if (@psyho_score > 29)
      @answers[0]
    elsif (@psyho_score > 24)
      @answers[1]
    elsif (@psyho_score > 18)
      @answers[2]
    elsif (@psyho_score > 13)
      @answers[3]
    elsif (@psyho_score > 8)
      @answers[4]
    elsif (@psyho_score > 3)
      @answers[5]
    else
      @answers[6]
    end
    puts @result_print
  end
end
