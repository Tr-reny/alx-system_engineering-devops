#!/usr/bin/python3
"""
    Recursively queries the Reddit API and returns a list of all hot articles for a given subreddit.

    :param subreddit: The subreddit to search.
    :param hot_list: A list to store the titles of the hot articles.
    :param after: A token used for pagination. It indicates where to start the next page of results.
    :return: A list containing the titles of all hot articles for the given subreddit, or None if no results are found.
    """

def recurse(subreddit, hot_list=[], after=None):
    
    url = f'https://www.reddit.com/r/{subreddit}/hot.json'
    headers = {'User-Agent': 'Mozilla/5.0'}
    params = {'limit': 100, 'after': after}

    response = requests.get(url, headers=headers, params=params)

    if response.status_code == 404:
        return None

    data = response.json()['data']
    hot_posts = data['children']

    for post in hot_posts:
        hot_list.append(post['data']['title'])

    after = data['after']
    if after is None:
        return hot_list
    else:
        return recurse(subreddit, hot_list, after)
