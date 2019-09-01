CREATE EXTENSION overflow;

-- smallint overflow checks
-- minimum int16 -32768
-- maximum int16 +32767
SELECT pg_add_int16_overflow(32767::smallint, 0::smallint);
SELECT pg_add_int16_overflow(32767::smallint, 1::smallint);
SELECT pg_sub_int16_overflow((-32768)::smallint, 0::smallint);
SELECT pg_sub_int16_overflow((-32768)::smallint, 1::smallint);
SELECT pg_mul_int16_overflow(32767::smallint, 1::smallint);
SELECT pg_mul_int16_overflow((-32768)::smallint, 1::smallint);
SELECT pg_mul_int16_overflow(32767::smallint, (-1)::smallint);
SELECT pg_mul_int16_overflow((-32768)::smallint, (-1)::smallint);

-- int overflow checks
-- minimum int32 -2147483648
-- maximum int32 +2147483647
SELECT pg_add_int32_overflow(2147483647, 0);
SELECT pg_add_int32_overflow(2147483647, 1);
SELECT pg_sub_int32_overflow(-2147483648, 0);
SELECT pg_sub_int32_overflow(-2147483648, 1);
SELECT pg_mul_int32_overflow(2147483647, 1);
SELECT pg_mul_int32_overflow(-2147483648, 1);
SELECT pg_mul_int32_overflow(2147483647, -1);
SELECT pg_mul_int32_overflow(-2147483648, -1);

-- bigint overflow checks
-- minimum int64 -9,223,372,036,854,775,808
-- maximum int64 +9,223,372,036,854,775,807
SELECT pg_add_int64_overflow(9223372036854775807::bigint, 0::bigint);
SELECT pg_add_int64_overflow(9223372036854775807::bigint, 1::bigint);
SELECT pg_sub_int64_overflow((-9223372036854775808)::bigint, 0::bigint);
SELECT pg_sub_int64_overflow((-9223372036854775808)::bigint, 1::bigint);
SELECT pg_mul_int64_overflow(9223372036854775807::bigint, 1::bigint);
SELECT pg_mul_int64_overflow((-9223372036854775808)::bigint, 1::bigint);
SELECT pg_mul_int64_overflow(9223372036854775807::bigint, (-1)::bigint);
SELECT pg_mul_int64_overflow((-9223372036854775808)::bigint, (-1)::bigint);

-- unsigned smallint overflow checks
-- maximum uint16 65535
-- maximum uint32 4294967295
-- maximum uint64 18446744073709551615
