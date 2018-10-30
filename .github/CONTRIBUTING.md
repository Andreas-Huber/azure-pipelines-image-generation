# Contributions

## Filing bugs

Having an issue with image generation?
[File an issue](https://github.com/Microsoft/azure-pipelines-image-generation/issues/new?template=bugs.md).

## Requesting an add or update

So you want to request a new tool, a new version of a tool, or a change to a tool? Great!
At a high level, the process looks like this:

1.  [Create an issue](https://github.com/Microsoft/azure-pipelines-image-generation/issues/new?template=tools.md) in this repo. Be sure to fill out the issue template to help us route your request quickly.
2.  Participate in the discussion via comments.
Our images have real constraints, especially disk space.
We have to balance the value (broad adoption of that tool) vs. cost (disk space and on-going maintenance) proposition.
3.  Optionally, create a PR.
For a new tool, it's probably not worth your time to create the PR until some discussion happens.
However, if you're just bumping a minor or patch version, feel free to create a PR and reference the issue.
4. After we approve a new or updated tool, someone from our team will make the change or merge your PR.

## Release process

We ship the Windows and Linux agents on a monthly basis.
There is some lead time between when a tool is approved and when it'll appear in the hosted pools.
Our workback looks roughly like this:

* Second Monday of the month: recommended date to have new requests in for the next image
* Third Monday of the month: release branch snaps for the next image - no new approvals after this date
* Fourth Monday of the month: new image begins rolling out to hosted pools
