select
	concat(
    '<comments>',
		group_concat(
		'<comment>', 
			'<comment_id>', comment_id, '</comment_id>',
            '<commented_date>', commented_date, '</commented_date>',
            '<content>', content, '</content>',
            '<commenter_user_id>', commenter_user_id, '</commenter_user_id>',
		'</comment>'
		separator ''),
    '</comments>') as xmldoc
from comments order by comment_id;
    
    
select
	concat(
    '<posts>',
		group_concat(
		'<post>', 
			'<post_id>', post_id, '</post_id>',
            '<category>', category, '</category>',
            '<content>', content, '</content>',
            '<image>', image, '</image>',
            '<posted_date>', posted_date, '</posted_date>',
            '<title>', title, '</title>',
		'</post>'
		separator ''),
    '</posts>') as xmldoc
from posts order by post_id;


select
	concat(
    '<posts_comments>',
		group_concat(
		'<post_comment>', 
			'<post_post_id>', post_post_id, '</post_post_id>',
            '<comments_comment_id>', comments_comment_id, '</comments_comment_id>',
		'</post_comment>'
		separator ''),
    '</posts_comments>') as xmldoc
from posts_comments;


select
	concat(
    '<roles>',
		group_concat(
		'<role>', 
			'<id>', id, '</id>',
            '<role>', role, '</role>',
		'</role>'
		separator ''),
    '</roles>') as xmldoc
from roles;


select
	concat(
    '<user_roles>',
		group_concat(
		'<user_role>', 
			'<user_id>', user_id, '</user_id>',
            '<role_id>', role_id, '</role_id>',
		'</user_role>'
		separator ''),
    '</user_roles>') as xmldoc
from user_role;


select
	concat(
    '<users>',
		group_concat(
		'<user>', 
			'<user_id>', user_id, '</user_id>',
            '<email>', email, '</email>',
            '<enabled>', enabled, '</enabled>',
            '<joining_date>', joining_date, '</joining_date>',
            '<name>', name, '</name>',
            '<password>', password, '</password>',
            '<profile_pic>', profile_pic, '</profile_pic>',
            '<sex>', password, '</sex>',
		'</user>'
		separator ''),
    '</users>') as xmldoc
from users;

