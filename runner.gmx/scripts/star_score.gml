//star_score(score)
//returns number of stars (0-5) that current score is worth

_score = argument0;
var _stars = 0;

if(_score>=5) 
{
    _stars = 1;
}

if(_score>=20)
{
    _stars = 2;
}

if(_score>=50)
{
    _stars = 3;
}

if(_score>=100)
{
    _stars = 4;
}

if(_score>=150)
{
    _stars = 5;
}

return _stars;
