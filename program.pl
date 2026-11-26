main(VolkTheme, NifTheme, NafTheme, NufTheme) :-

    permutation([volk, nif, naf, nuf], Seating),
    permutation([flora, sport, kosmos, fauna], Themes),

    % Cопоставляем человеку тему по его позиции в списке
    nth1(VolkPos, Seating, volk), nth1(VolkPos, Themes, VolkTheme),
    nth1(NifPos, Seating, nif),   nth1(NifPos, Themes, NifTheme),
    nth1(NafPos, Seating, naf),   nth1(NafPos, Themes, NafTheme),
    nth1(NufPos, Seating, nuf),   nth1(NufPos, Themes, NufTheme),

    VolkTheme = fauna,                    % Волк собирает марки про фауну
    NafPos is (VolkPos mod 4) + 1,        % Волк сидит слева от Нафа
    NufPos is ((NafPos + 1) mod 4) + 1,   % Нуф сидит напротив Нафа

    nth1(KosmosPos, Themes, kosmos),
    NifPos is (KosmosPos mod 4) + 1,      % Ниф сидит справа от собирателя космоса

    NufTheme \= sport.                    % Нуф не интересуется спортом
