require 'rubygems'
require 'mongo'

// [user]にユーザ名、[pass]にパスワード
db = Mongo::Connection.from_uri('mongodb://[user]:[pass]@ds033487.mongolab.com:33487/mongo_test').db('mongo_test')
@items = db.collection('items')

item = {
	:name => 'syamoji',
	:love => 'マキシム！',
	:profile => '通販生活'
}
@items.insert(item)
