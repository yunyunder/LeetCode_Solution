// time O(len(t))
// space O(1)

public class IsSubsequence
{
	public bool IsSubseq(string s, string t)
	{
		int si = 0;
		int ti = 0;
		if (s.Length == 0)
			return true;
		while (ti < t.Length)
		{
			if (s[si] == t[ti])
				si++;
			if (si == s.Length)
				break;
			ti++;
		}
		return si == s.Length;
	}
}

