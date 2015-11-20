// React.render(
//     <h1>Hello, React!</h1>,
//     <ul class="poker">
//         <li class="card flower-spade num-1 "></li>
//         <li class="card flower-heart num-2 "></li>
//         <li class="card flower-diamond num-3 "></li>
//         <li class="card flower-club num-11 "></li>
//         <li class="card joker "></li>
//         <li class="card joker"></li>
//     </ul>

//    document.getElementById('poker');
    
// );



// tutorial1.js
// var CommentBox = React.createClass({
//   render: function() {
//     return (
//       <div className="commentBox">
//         Hello, world! I am a CommentBox.
//       </div>
//     );
//   }
// });
// React.render(
//   <CommentBox/>,
//   document.getElementById('poker')
// );

var Shapes = ['spade', 'heart', 'diamond', 'club'];
var PokerTranslate = {
    0: '鬼',
    1: 'A',
    11: 'J',
    12: 'Q',
    13: 'K'
};
var initPorkers = (function(){
    var cards = [];
    for (var j = 0; j < 4; j++) {
        cards.push({
            num: 0,
            shape: 'joker-master'
        });
        cards.push({
            num: 0,
            shape: 'joker'
        });
        for (var i=1; i<= 13; i++) {
            cards.push({
                num: i,
                shape: Shapes[j],
                name: (PokerTranslate[i]) ? PokerTranslate[i] : i
            });
        }
    }
    return cards;
})();

var onePorkers = function() {
    var cards = [
        {
            num: 0,
            shape: 'joker-master'
        },
        {
            num: 0, 
            shape: 'joker'
        }
    ];
    for (var i=1; i<= 13; i++) {
        for (var j = 0; j < 4; j++) {
            cards.push({
                num: i,
                shape: Shapes[j],
                name: (PokerTranslate[i]) ? PokerTranslate[i] : i
            });
        }
    }

    return cards;
};


var PokerCard = React.createClass({
    render: function() {
        return (
            <li className={'card shape-' + this.props.shape + ' num-' + this.props.num}></li>
        );
    }
});
var PokerQueue = React.createClass({
    render: function() {
        var pokerNodes = this.props.data.map(function(item) {
            return (
                <PokerCard shape={item.shape} num={item.num}/>
            );
        });

        return (
            <ul className="poker">
                {pokerNodes}
            </ul>
        );
    }
});
var PokerBox = React.createClass({
    // loadCommentsFromServer: function() {
    //     $.ajax({
    //       url: this.props.url,
    //       dataType: 'json',
    //       cache: false,
    //       success: function(data) {
    //         this.setState({data: data});
    //       }.bind(this),
    //       error: function(xhr, status, err) {
    //         console.error(this.props.url, status, err.toString());
    //       }.bind(this)
    //     });
    // },
    getInitialState: function() {
        return {
            data: []//allPorkers
        };
    },
    componentDidMount: function() {
        // this.state.data; 
        // this.loadCommentsFromServer();
        // setInterval(this.loadCommentsFromServer, this.props.pollInterval);
    },
    render: function() {
        var data = this.state.data;
        var shapes = this.props.shapes.map(function(shape){
            return (
                <PokerQueue shape={shape} data={data}/>
            );
        });

        return (
            <div className="">
                <PokerCard shape='joker' num='0'/>
                <PokerCard shape='joker' num='0'/>
                <PokerCard shape='joker' num='0'/>
                <PokerCard shape='joker' num='0'/>
                {shapes}
            </div>
        );
    }
});

var peopleNum = 4;

for (var i=0; i< peopleNum; i++) {

    React.render(
        <PokerQueue data={initPorkers} />,
        document.getElementById('poker')
    );
}

