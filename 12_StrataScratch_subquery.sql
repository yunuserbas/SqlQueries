

-- Users By Average Session Time

Problem: Calculate each user's average session time. A session is defined as the time difference between a page_load and page_exit. 
For simplicity, assume a user has only 1 session per day and if there are multiple of the same events on that day, consider only the latest page_load and 
earliest page_exit. Output the user_id and their average session time.



Solution:


SELECT
  user_id,
  AVG(session_time) AS average_session_time
FROM (
  SELECT
    user_id,
    MAX(CASE WHEN action = 'page_load' THEN timestamp END) AS page_load_time,
    MIN(CASE WHEN action = 'page_exit' THEN timestamp END) AS page_exit_time,
    (
      MIN(CASE WHEN action = 'page_exit' THEN timestamp END)
      - MAX(CASE WHEN action = 'page_load' THEN timestamp END)
    ) AS session_time
  FROM facebook_web_log
  WHERE action IN ('page_load', 'page_exit')
  GROUP BY user_id, DATE(timestamp)
) AS sessions
GROUP BY user_id










