.class public final Lcom/alibaba/fastjson/serializer/SerializeWriter;
.super Ljava/io/Writer;
.source "SerializeWriter.java"


# static fields
.field public static final DIGITS:[C

.field static final DigitOnes:[C

.field static final DigitTens:[C

.field static final ascii_chars:[C

.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field static final digits:[C

.field static final replaceChars:[C

.field static final sizeTable:[I

.field static final specicalFlags_doubleQuotes:[B

.field static final specicalFlags_singleQuotes:[B


# instance fields
.field protected buf:[C

.field protected count:I

.field protected features:I

.field protected final writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    .line 984
    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sizeTable:[I

    .line 1036
    const/16 v1, 0x24

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->digits:[C

    .line 1039
    const/16 v1, 0x64

    new-array v2, v1, [C

    fill-array-data v2, :array_2

    sput-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DigitTens:[C

    .line 1045
    new-array v1, v1, [C

    fill-array-data v1, :array_3

    sput-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DigitOnes:[C

    .line 1052
    const/16 v1, 0x60

    new-array v1, v1, [C

    fill-array-data v1, :array_4

    sput-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->ascii_chars:[C

    .line 1059
    const/16 v1, 0xa1

    new-array v2, v1, [B

    sput-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    .line 1060
    new-array v1, v1, [B

    sput-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_singleQuotes:[B

    .line 1062
    const/16 v3, 0x5d

    new-array v3, v3, [C

    sput-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    .line 1064
    const/4 v3, 0x0

    const/4 v4, 0x4

    aput-byte v4, v2, v3

    .line 1065
    const/4 v5, 0x1

    aput-byte v4, v2, v5

    .line 1066
    const/4 v6, 0x2

    aput-byte v4, v2, v6

    .line 1067
    const/4 v7, 0x3

    aput-byte v4, v2, v7

    .line 1068
    aput-byte v4, v2, v4

    .line 1069
    const/4 v8, 0x5

    aput-byte v4, v2, v8

    .line 1070
    const/4 v9, 0x6

    aput-byte v4, v2, v9

    .line 1071
    const/4 v10, 0x7

    aput-byte v4, v2, v10

    .line 1072
    const/16 v11, 0x8

    aput-byte v5, v2, v11

    .line 1073
    const/16 v12, 0x9

    aput-byte v5, v2, v12

    .line 1074
    aput-byte v5, v2, v0

    .line 1075
    const/16 v13, 0xb

    aput-byte v4, v2, v13

    .line 1076
    const/16 v14, 0xc

    aput-byte v5, v2, v14

    .line 1077
    const/16 v15, 0xd

    aput-byte v5, v2, v15

    .line 1078
    const/16 v16, 0x22

    aput-byte v5, v2, v16

    .line 1079
    const/16 v17, 0x5c

    aput-byte v5, v2, v17

    .line 1081
    aput-byte v4, v1, v3

    .line 1082
    aput-byte v4, v1, v5

    .line 1083
    aput-byte v4, v1, v6

    .line 1084
    aput-byte v4, v1, v7

    .line 1085
    aput-byte v4, v1, v4

    .line 1086
    aput-byte v4, v1, v8

    .line 1087
    aput-byte v4, v1, v9

    .line 1088
    aput-byte v4, v1, v10

    .line 1089
    aput-byte v5, v1, v11

    .line 1090
    aput-byte v5, v1, v12

    .line 1091
    aput-byte v5, v1, v0

    .line 1092
    aput-byte v4, v1, v13

    .line 1093
    aput-byte v5, v1, v14

    .line 1094
    aput-byte v5, v1, v15

    .line 1095
    aput-byte v5, v1, v17

    .line 1096
    const/16 v2, 0x27

    aput-byte v5, v1, v2

    .line 1098
    const/16 v1, 0xe

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 1099
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    aput-byte v4, v2, v1

    .line 1100
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_singleQuotes:[B

    aput-byte v4, v2, v1

    .line 1098
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x27

    goto :goto_0

    .line 1103
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x7f

    .restart local v1    # "i":I
    :goto_1
    const/16 v2, 0xa0

    if-ge v1, v2, :cond_1

    .line 1104
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    aput-byte v4, v2, v1

    .line 1105
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_singleQuotes:[B

    aput-byte v4, v2, v1

    .line 1103
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1108
    .end local v1    # "i":I
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    const/16 v2, 0x30

    aput-char v2, v1, v3

    .line 1109
    const/16 v2, 0x31

    aput-char v2, v1, v5

    .line 1110
    const/16 v2, 0x32

    aput-char v2, v1, v6

    .line 1111
    const/16 v2, 0x33

    aput-char v2, v1, v7

    .line 1112
    const/16 v2, 0x34

    aput-char v2, v1, v4

    .line 1113
    const/16 v2, 0x35

    aput-char v2, v1, v8

    .line 1114
    const/16 v2, 0x36

    aput-char v2, v1, v9

    .line 1115
    const/16 v2, 0x37

    aput-char v2, v1, v10

    .line 1116
    const/16 v2, 0x62

    aput-char v2, v1, v11

    .line 1117
    const/16 v2, 0x74

    aput-char v2, v1, v12

    .line 1118
    const/16 v2, 0x6e

    aput-char v2, v1, v0

    .line 1119
    const/16 v0, 0x76

    aput-char v0, v1, v13

    .line 1120
    const/16 v0, 0x66

    aput-char v0, v1, v14

    .line 1121
    const/16 v0, 0x72

    aput-char v0, v1, v15

    .line 1122
    aput-char v16, v1, v16

    .line 1123
    const/16 v0, 0x27

    aput-char v0, v1, v0

    .line 1124
    const/16 v0, 0x2f

    aput-char v0, v1, v0

    .line 1125
    aput-char v17, v1, v17

    .line 1128
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DIGITS:[C

    return-void

    :array_0
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_4
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x33s
        0x30s
        0x34s
        0x30s
        0x35s
        0x30s
        0x36s
        0x30s
        0x37s
        0x30s
        0x38s
        0x30s
        0x39s
        0x30s
        0x41s
        0x30s
        0x42s
        0x30s
        0x43s
        0x30s
        0x44s
        0x30s
        0x45s
        0x30s
        0x46s
        0x31s
        0x30s
        0x31s
        0x31s
        0x31s
        0x32s
        0x31s
        0x33s
        0x31s
        0x34s
        0x31s
        0x35s
        0x31s
        0x36s
        0x31s
        0x37s
        0x31s
        0x38s
        0x31s
        0x39s
        0x31s
        0x41s
        0x31s
        0x42s
        0x31s
        0x43s
        0x31s
        0x44s
        0x31s
        0x45s
        0x31s
        0x46s
        0x32s
        0x30s
        0x32s
        0x31s
        0x32s
        0x32s
        0x32s
        0x33s
        0x32s
        0x34s
        0x32s
        0x35s
        0x32s
        0x36s
        0x32s
        0x37s
        0x32s
        0x38s
        0x32s
        0x39s
        0x32s
        0x41s
        0x32s
        0x42s
        0x32s
        0x43s
        0x32s
        0x44s
        0x32s
        0x45s
        0x32s
        0x46s
    .end array-data

    :array_5
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    check-cast v0, Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;)V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;

    .line 50
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 52
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 54
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 56
    if-eqz v0, :cond_0

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-nez v0, :cond_1

    .line 61
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 63
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "initialSize"    # I

    .line 91
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 94
    if-lez p2, :cond_0

    .line 97
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 98
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "featuresValue"    # I
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 69
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 72
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 73
    if-eqz v1, :cond_0

    .line 74
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-nez v0, :cond_1

    .line 78
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 81
    :cond_1
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    .line 82
    .local v2, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    iget v3, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr p2, v3

    .line 81
    .end local v2    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_2
    iput p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 85
    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 2
    .param p1, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 67
    return-void
.end method

.method protected static getChars(JI[C)V
    .locals 8
    .param p0, "i"    # J
    .param p2, "index"    # I
    .param p3, "buf"    # [C

    .line 989
    move v0, p2

    .line 990
    .local v0, "charPos":I
    const/4 v1, 0x0

    .line 992
    .local v1, "sign":C
    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-gez v4, :cond_0

    .line 993
    const/16 v1, 0x2d

    .line 994
    neg-long p0, p0

    .line 998
    :cond_0
    :goto_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, p0, v2

    if-lez v4, :cond_1

    .line 999
    const-wide/16 v2, 0x64

    div-long v2, p0, v2

    .line 1001
    .local v2, "q":J
    const/4 v4, 0x6

    shl-long v4, v2, v4

    const/4 v6, 0x5

    shl-long v6, v2, v6

    add-long/2addr v4, v6

    const/4 v6, 0x2

    shl-long v6, v2, v6

    add-long/2addr v4, v6

    sub-long v4, p0, v4

    long-to-int v5, v4

    .line 1002
    .local v5, "r":I
    move-wide p0, v2

    .line 1003
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DigitOnes:[C

    aget-char v4, v4, v5

    aput-char v4, p3, v0

    .line 1004
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DigitTens:[C

    aget-char v4, v4, v5

    aput-char v4, p3, v0

    goto :goto_0

    .line 1009
    .end local v2    # "q":J
    .end local v5    # "r":I
    :cond_1
    long-to-int v2, p0

    .line 1010
    .local v2, "i2":I
    :goto_1
    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_2

    .line 1011
    div-int/lit8 v3, v2, 0x64

    .line 1013
    .local v3, "q2":I
    shl-int/lit8 v4, v3, 0x6

    shl-int/lit8 v5, v3, 0x5

    add-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    sub-int v4, v2, v4

    .line 1014
    .local v4, "r":I
    move v2, v3

    .line 1015
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DigitOnes:[C

    aget-char v5, v5, v4

    aput-char v5, p3, v0

    .line 1016
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DigitTens:[C

    aget-char v5, v5, v4

    aput-char v5, p3, v0

    goto :goto_1

    .line 1022
    .end local v3    # "q2":I
    .end local v4    # "r":I
    :cond_2
    const v3, 0xcccd

    mul-int v3, v3, v2

    ushr-int/lit8 v3, v3, 0x13

    .line 1023
    .restart local v3    # "q2":I
    shl-int/lit8 v4, v3, 0x3

    shl-int/lit8 v5, v3, 0x1

    add-int/2addr v4, v5

    sub-int v4, v2, v4

    .line 1024
    .restart local v4    # "r":I
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->digits:[C

    aget-char v5, v5, v4

    aput-char v5, p3, v0

    .line 1025
    move v2, v3

    .line 1026
    if-nez v2, :cond_2

    .line 1028
    if-eqz v1, :cond_3

    .line 1029
    add-int/lit8 v0, v0, -0x1

    aput-char v1, p3, v0

    .line 1031
    :cond_3
    return-void
.end method

.method private writeKeyWithDoubleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 17
    .param p1, "text"    # Ljava/lang/String;

    .line 774
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 775
    .local v2, "len":I
    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v3, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 776
    .local v3, "newcount":I
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    const/16 v6, 0x5c

    const/16 v7, 0x3a

    const/16 v8, 0x22

    if-le v3, v5, :cond_8

    .line 777
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_7

    .line 778
    if-nez v2, :cond_0

    .line 779
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 780
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 781
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 782
    return-void

    .line 785
    :cond_0
    const/4 v4, 0x0

    .line 786
    .local v4, "hasSpecial":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 787
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 788
    .local v9, "ch":C
    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    array-length v11, v10

    if-ge v9, v11, :cond_1

    aget-byte v10, v10, v9

    if-eqz v10, :cond_1

    .line 789
    const/4 v4, 0x1

    .line 790
    goto :goto_1

    .line 786
    .end local v9    # "ch":C
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 794
    .end local v5    # "i":I
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 795
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 797
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v2, :cond_5

    .line 798
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 799
    .restart local v9    # "ch":C
    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    array-length v11, v10

    if-ge v9, v11, :cond_4

    aget-byte v10, v10, v9

    if-eqz v10, :cond_4

    .line 800
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 801
    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v10, v10, v9

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 803
    :cond_4
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 797
    .end local v9    # "ch":C
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 806
    .end local v5    # "i":I
    :cond_5
    if-eqz v4, :cond_6

    .line 807
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 809
    :cond_6
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 810
    return-void

    .line 812
    .end local v4    # "hasSpecial":Z
    :cond_7
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 815
    :cond_8
    if-nez v2, :cond_a

    .line 816
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v5, v4, 0x3

    .line 817
    .local v5, "newCount":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v6, v6

    if-le v5, v6, :cond_9

    .line 818
    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 820
    :cond_9
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v6, 0x1

    iput v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v8, v4, v6

    .line 821
    add-int/lit8 v6, v9, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v8, v4, v9

    .line 822
    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v7, v4, v6

    .line 823
    return-void

    .line 826
    .end local v5    # "newCount":I
    :cond_a
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 827
    .local v5, "start":I
    add-int v9, v5, v2

    .line 829
    .local v9, "end":I
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v11, 0x0

    invoke-virtual {v1, v11, v2, v10, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 830
    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 832
    const/4 v10, 0x0

    .line 834
    .local v10, "hasSpecial":Z
    move v12, v5

    .local v12, "i":I
    :goto_4
    if-ge v12, v9, :cond_f

    .line 835
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v14, v13, v12

    .line 836
    .local v14, "ch":C
    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    array-length v7, v15

    if-ge v14, v7, :cond_e

    aget-byte v7, v15, v14

    if-eqz v7, :cond_e

    .line 837
    if-nez v10, :cond_c

    .line 838
    add-int/lit8 v3, v3, 0x3

    .line 839
    array-length v7, v13

    if-le v3, v7, :cond_b

    .line 840
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 842
    :cond_b
    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 844
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v12, 0x1

    add-int/lit8 v15, v12, 0x3

    sub-int v16, v9, v12

    add-int/lit8 v6, v16, -0x1

    invoke-static {v7, v13, v7, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 845
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v11, v6, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 846
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v8, v6, v5

    .line 847
    add-int/lit8 v12, v12, 0x1

    const/16 v7, 0x5c

    aput-char v7, v6, v12

    .line 848
    add-int/2addr v12, v4

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v7, v7, v14

    aput-char v7, v6, v12

    .line 849
    add-int/lit8 v9, v9, 0x2

    .line 850
    iget v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v7, v7, -0x2

    aput-char v8, v6, v7

    .line 852
    const/4 v6, 0x1

    move v10, v6

    const/16 v7, 0x5c

    .end local v10    # "hasSpecial":Z
    .local v6, "hasSpecial":Z
    goto :goto_5

    .line 854
    .end local v6    # "hasSpecial":Z
    .restart local v10    # "hasSpecial":Z
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 855
    array-length v6, v13

    if-le v3, v6, :cond_d

    .line 856
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 858
    :cond_d
    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 860
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v12, 0x1

    add-int/lit8 v13, v12, 0x2

    sub-int v15, v9, v12

    invoke-static {v6, v7, v6, v13, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 861
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v7, 0x5c

    aput-char v7, v6, v12

    .line 862
    add-int/lit8 v12, v12, 0x1

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v13, v13, v14

    aput-char v13, v6, v12

    .line 863
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 836
    :cond_e
    const/16 v7, 0x5c

    .line 834
    .end local v14    # "ch":C
    :goto_5
    add-int/2addr v12, v4

    const/16 v6, 0x5c

    const/16 v7, 0x3a

    goto :goto_4

    .line 868
    .end local v12    # "i":I
    :cond_f
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v7, v4

    const/16 v4, 0x3a

    aput-char v4, v6, v7

    .line 869
    return-void
.end method

.method private writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 17
    .param p1, "text"    # Ljava/lang/String;

    .line 872
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 873
    .local v2, "len":I
    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v3, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 874
    .local v3, "newcount":I
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    const/16 v6, 0x5c

    const/16 v7, 0x3a

    const/16 v8, 0x27

    if-le v3, v5, :cond_8

    .line 875
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_7

    .line 876
    if-nez v2, :cond_0

    .line 877
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 878
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 879
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 880
    return-void

    .line 883
    :cond_0
    const/4 v4, 0x0

    .line 884
    .local v4, "hasSpecial":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 885
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 886
    .local v9, "ch":C
    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_singleQuotes:[B

    array-length v11, v10

    if-ge v9, v11, :cond_1

    aget-byte v10, v10, v9

    if-eqz v10, :cond_1

    .line 887
    const/4 v4, 0x1

    .line 888
    goto :goto_1

    .line 884
    .end local v9    # "ch":C
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 892
    .end local v5    # "i":I
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 893
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 895
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v2, :cond_5

    .line 896
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 897
    .restart local v9    # "ch":C
    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_singleQuotes:[B

    array-length v11, v10

    if-ge v9, v11, :cond_4

    aget-byte v10, v10, v9

    if-eqz v10, :cond_4

    .line 898
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 899
    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v10, v10, v9

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 901
    :cond_4
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 895
    .end local v9    # "ch":C
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 904
    .end local v5    # "i":I
    :cond_5
    if-eqz v4, :cond_6

    .line 905
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 907
    :cond_6
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 908
    return-void

    .line 911
    .end local v4    # "hasSpecial":Z
    :cond_7
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 914
    :cond_8
    if-nez v2, :cond_a

    .line 915
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v5, v4, 0x3

    .line 916
    .local v5, "newCount":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v6, v6

    if-le v5, v6, :cond_9

    .line 917
    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 919
    :cond_9
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v6, 0x1

    iput v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v8, v4, v6

    .line 920
    add-int/lit8 v6, v9, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v8, v4, v9

    .line 921
    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v7, v4, v6

    .line 922
    return-void

    .line 925
    .end local v5    # "newCount":I
    :cond_a
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 926
    .local v5, "start":I
    add-int v9, v5, v2

    .line 928
    .local v9, "end":I
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v11, 0x0

    invoke-virtual {v1, v11, v2, v10, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 929
    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 931
    const/4 v10, 0x0

    .line 933
    .local v10, "hasSpecial":Z
    move v12, v5

    .local v12, "i":I
    :goto_4
    if-ge v12, v9, :cond_f

    .line 934
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v14, v13, v12

    .line 935
    .local v14, "ch":C
    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_singleQuotes:[B

    array-length v7, v15

    if-ge v14, v7, :cond_e

    aget-byte v7, v15, v14

    if-eqz v7, :cond_e

    .line 936
    if-nez v10, :cond_c

    .line 937
    add-int/lit8 v3, v3, 0x3

    .line 938
    array-length v7, v13

    if-le v3, v7, :cond_b

    .line 939
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 941
    :cond_b
    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 943
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v12, 0x1

    add-int/lit8 v15, v12, 0x3

    sub-int v16, v9, v12

    add-int/lit8 v6, v16, -0x1

    invoke-static {v7, v13, v7, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 944
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v11, v6, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 945
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v8, v6, v5

    .line 946
    add-int/lit8 v12, v12, 0x1

    const/16 v7, 0x5c

    aput-char v7, v6, v12

    .line 947
    add-int/2addr v12, v4

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v7, v7, v14

    aput-char v7, v6, v12

    .line 948
    add-int/lit8 v9, v9, 0x2

    .line 949
    iget v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v7, v7, -0x2

    aput-char v8, v6, v7

    .line 951
    const/4 v6, 0x1

    move v10, v6

    const/16 v7, 0x5c

    .end local v10    # "hasSpecial":Z
    .local v6, "hasSpecial":Z
    goto :goto_5

    .line 953
    .end local v6    # "hasSpecial":Z
    .restart local v10    # "hasSpecial":Z
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 954
    array-length v6, v13

    if-le v3, v6, :cond_d

    .line 955
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 957
    :cond_d
    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 959
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v12, 0x1

    add-int/lit8 v13, v12, 0x2

    sub-int v15, v9, v12

    invoke-static {v6, v7, v6, v13, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 960
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v7, 0x5c

    aput-char v7, v6, v12

    .line 961
    add-int/lit8 v12, v12, 0x1

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v13, v13, v14

    aput-char v13, v6, v12

    .line 962
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 935
    :cond_e
    const/16 v7, 0x5c

    .line 933
    .end local v14    # "ch":C
    :goto_5
    add-int/2addr v12, v4

    const/16 v6, 0x5c

    const/16 v7, 0x3a

    goto :goto_4

    .line 967
    .end local v12    # "i":I
    :cond_f
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, -0x1

    const/16 v7, 0x3a

    aput-char v7, v4, v6

    .line 968
    return-void
.end method


# virtual methods
.method public append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 0
    .param p1, "c"    # C

    .line 244
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 245
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 232
    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "s":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 234
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 238
    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-interface {v0, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 240
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-lez v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v0

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_1

    .line 277
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 280
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 281
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .param p2, "state"    # Z

    .line 101
    if-eqz p2, :cond_0

    .line 102
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0

    .line 104
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 106
    :goto_0
    return-void
.end method

.method protected expandCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    .line 168
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 170
    .local v1, "newCapacity":I
    if-ge v1, p1, :cond_0

    .line 171
    move v1, p1

    .line 173
    :cond_0
    new-array v2, v1, [C

    .line 174
    .local v2, "newValue":[C
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 176
    return-void
.end method

.method public flush()V
    .locals 4

    .line 971
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 972
    return-void

    .line 976
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 977
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 978
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    nop

    .line 982
    return-void

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 109
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toBytes(Ljava/lang/String;)[B
    .locals 4
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_1

    .line 253
    if-nez p1, :cond_0

    .line 254
    const-string p1, "UTF-8"

    .line 258
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "toBytes error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 250
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 265
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I

    .line 116
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 117
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 122
    const/4 v0, 0x1

    .line 125
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 126
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 127
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 284
    if-nez p1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 286
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 290
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 186
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 187
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 189
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v1

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v2, v3

    .line 193
    .local v2, "rest":I
    add-int v4, p2, v2

    invoke-virtual {p1, p2, v4, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 194
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 195
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 196
    sub-int/2addr p3, v2

    .line 197
    add-int/2addr p2, v2

    .line 198
    .end local v2    # "rest":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-gt p3, v1, :cond_0

    .line 199
    move v0, p3

    .line 202
    :cond_1
    :goto_0
    add-int v1, p2, p3

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 203
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 204
    return-void
.end method

.method public write(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 662
    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method public write([CII)V
    .locals 4
    .param p1, "c"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 137
    if-ltz p2, :cond_3

    array-length v0, p1

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    add-int v0, p2, p3

    if-ltz v0, :cond_3

    .line 143
    if-nez p3, :cond_0

    .line 144
    return-void

    .line 147
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 148
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 150
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v1

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v2, v3

    .line 154
    .local v2, "rest":I
    invoke-static {p1, p2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 156
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 157
    sub-int/2addr p3, v2

    .line 158
    add-int/2addr p2, v2

    .line 159
    .end local v2    # "rest":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-gt p3, v1, :cond_1

    .line 160
    move v0, p3

    .line 163
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 165
    return-void

    .line 142
    .end local v0    # "newcount":I
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public writeByteArray([B)V
    .locals 19
    .param p1, "bytes"    # [B

    .line 328
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    .line 330
    .local v2, "bytesLen":I
    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 331
    .local v3, "singleQuote":Z
    :goto_0
    if-eqz v3, :cond_1

    const/16 v6, 0x27

    goto :goto_1

    :cond_1
    const/16 v6, 0x22

    .line 333
    .local v6, "quote":C
    :goto_1
    if-nez v2, :cond_3

    .line 334
    if-eqz v3, :cond_2

    const-string v4, "\'\'"

    goto :goto_2

    :cond_2
    const-string v4, "\"\""

    .line 335
    .local v4, "emptyString":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 336
    return-void

    .line 339
    .end local v4    # "emptyString":Ljava/lang/String;
    :cond_3
    sget-object v7, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    .line 341
    .local v7, "CA":[C
    div-int/lit8 v8, v2, 0x3

    mul-int/lit8 v8, v8, 0x3

    .line 342
    .local v8, "eLen":I
    add-int/lit8 v9, v2, -0x1

    div-int/lit8 v9, v9, 0x3

    add-int/2addr v9, v5

    const/4 v5, 0x2

    shl-int/2addr v9, v5

    .line 344
    .local v9, "charsLen":I
    iget v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 345
    .local v10, "offset":I
    iget v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v11, v9

    add-int/2addr v11, v5

    .line 346
    .local v11, "newcount":I
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v12, v12

    const/16 v13, 0x3d

    if-le v11, v12, :cond_9

    .line 347
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v12, :cond_8

    .line 348
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 350
    const/4 v12, 0x0

    .local v12, "s":I
    :goto_3
    if-ge v12, v8, :cond_4

    .line 352
    add-int/lit8 v14, v12, 0x1

    .end local v12    # "s":I
    .local v14, "s":I
    aget-byte v12, v1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "s":I
    .local v15, "s":I
    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v12, v14

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "s":I
    .restart local v14    # "s":I
    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v12, v15

    .line 355
    .local v12, "i":I
    ushr-int/lit8 v15, v12, 0x12

    and-int/lit8 v15, v15, 0x3f

    aget-char v15, v7, v15

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 356
    ushr-int/lit8 v15, v12, 0xc

    and-int/lit8 v15, v15, 0x3f

    aget-char v15, v7, v15

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 357
    ushr-int/lit8 v15, v12, 0x6

    and-int/lit8 v15, v15, 0x3f

    aget-char v15, v7, v15

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 358
    and-int/lit8 v15, v12, 0x3f

    aget-char v15, v7, v15

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 359
    .end local v12    # "i":I
    move v12, v14

    goto :goto_3

    .line 362
    .end local v14    # "s":I
    :cond_4
    sub-int v12, v2, v8

    .line 363
    .local v12, "left":I
    if-lez v12, :cond_7

    .line 365
    aget-byte v14, v1, v8

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0xa

    if-ne v12, v5, :cond_5

    add-int/lit8 v4, v2, -0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v5

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    or-int/2addr v4, v14

    .line 368
    .local v4, "i":I
    shr-int/lit8 v14, v4, 0xc

    aget-char v14, v7, v14

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 369
    ushr-int/lit8 v14, v4, 0x6

    and-int/lit8 v14, v14, 0x3f

    aget-char v14, v7, v14

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 370
    if-ne v12, v5, :cond_6

    and-int/lit8 v5, v4, 0x3f

    aget-char v5, v7, v5

    goto :goto_5

    :cond_6
    const/16 v5, 0x3d

    :goto_5
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 371
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 374
    .end local v4    # "i":I
    :cond_7
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 375
    return-void

    .line 377
    .end local v12    # "left":I
    :cond_8
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 379
    :cond_9
    iput v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 380
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v10, 0x1

    .end local v10    # "offset":I
    .local v14, "offset":I
    aput-char v6, v12, v10

    .line 383
    const/4 v10, 0x0

    .local v10, "s":I
    move v12, v14

    .local v12, "d":I
    :goto_6
    if-ge v10, v8, :cond_a

    .line 385
    add-int/lit8 v15, v10, 0x1

    .end local v10    # "s":I
    .restart local v15    # "s":I
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "s":I
    .local v16, "s":I
    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v10, v15

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "s":I
    .restart local v15    # "s":I
    aget-byte v4, v1, v16

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v10

    .line 388
    .restart local v4    # "i":I
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v12, 0x1

    .end local v12    # "d":I
    .local v16, "d":I
    ushr-int/lit8 v18, v4, 0x12

    and-int/lit8 v18, v18, 0x3f

    aget-char v18, v7, v18

    aput-char v18, v10, v12

    .line 389
    add-int/lit8 v12, v16, 0x1

    .end local v16    # "d":I
    .restart local v12    # "d":I
    ushr-int/lit8 v18, v4, 0xc

    and-int/lit8 v18, v18, 0x3f

    aget-char v18, v7, v18

    aput-char v18, v10, v16

    .line 390
    add-int/lit8 v16, v12, 0x1

    .end local v12    # "d":I
    .restart local v16    # "d":I
    ushr-int/lit8 v18, v4, 0x6

    and-int/lit8 v18, v18, 0x3f

    aget-char v18, v7, v18

    aput-char v18, v10, v12

    .line 391
    add-int/lit8 v12, v16, 0x1

    .end local v16    # "d":I
    .restart local v12    # "d":I
    and-int/lit8 v18, v4, 0x3f

    aget-char v18, v7, v18

    aput-char v18, v10, v16

    .line 392
    .end local v4    # "i":I
    move v10, v15

    goto :goto_6

    .line 395
    .end local v12    # "d":I
    .end local v15    # "s":I
    :cond_a
    sub-int v4, v2, v8

    .line 396
    .local v4, "left":I
    if-lez v4, :cond_d

    .line 398
    aget-byte v10, v1, v8

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0xa

    if-ne v4, v5, :cond_b

    add-int/lit8 v12, v2, -0x1

    aget-byte v12, v1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v5

    move/from16 v17, v12

    goto :goto_7

    :cond_b
    const/16 v17, 0x0

    :goto_7
    or-int v10, v10, v17

    .line 401
    .local v10, "i":I
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v11, -0x5

    shr-int/lit8 v16, v10, 0xc

    aget-char v16, v7, v16

    aput-char v16, v12, v15

    .line 402
    add-int/lit8 v15, v11, -0x4

    ushr-int/lit8 v16, v10, 0x6

    and-int/lit8 v16, v16, 0x3f

    aget-char v16, v7, v16

    aput-char v16, v12, v15

    .line 403
    add-int/lit8 v15, v11, -0x3

    if-ne v4, v5, :cond_c

    and-int/lit8 v5, v10, 0x3f

    aget-char v5, v7, v5

    goto :goto_8

    :cond_c
    const/16 v5, 0x3d

    :goto_8
    aput-char v5, v12, v15

    .line 404
    add-int/lit8 v5, v11, -0x2

    aput-char v13, v12, v5

    .line 406
    .end local v10    # "i":I
    :cond_d
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v11, -0x1

    aput-char v6, v5, v10

    .line 407
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "checkSpecial"    # Z

    .line 757
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    const/16 v1, 0x3a

    if-eqz v0, :cond_1

    .line 758
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 762
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_0

    .line 765
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 766
    invoke-virtual {p0, p1, v1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto :goto_0

    .line 768
    :cond_2
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithDoubleQuoteIfHasSpecial(Ljava/lang/String;)V

    .line 771
    :goto_0
    return-void
.end method

.method public writeInt(I)V
    .locals 6
    .param p1, "i"    # I

    .line 293
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 294
    const-string v0, "-2147483648"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 295
    return-void

    .line 299
    :cond_0
    if-gez p1, :cond_1

    neg-int v0, p1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 300
    .local v0, "x":I
    :goto_0
    const/4 v1, 0x0

    .line 301
    .local v1, "j":I
    :goto_1
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sizeTable:[I

    aget v2, v2, v1

    if-gt v0, v2, :cond_5

    .line 302
    add-int/lit8 v2, v1, 0x1

    .line 303
    .local v2, "size":I
    nop

    .line 306
    .end local v1    # "j":I
    if-gez p1, :cond_2

    .line 307
    add-int/lit8 v2, v2, 0x1

    .line 310
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v2

    .line 311
    .local v1, "newcount":I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v1, v3, :cond_4

    .line 312
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v3, :cond_3

    .line 313
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_2

    .line 315
    :cond_3
    new-array v3, v2, [C

    .line 316
    .local v3, "chars":[C
    int-to-long v4, p1

    invoke-static {v4, v5, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 317
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {p0, v3, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 318
    return-void

    .line 322
    .end local v3    # "chars":[C
    :cond_4
    :goto_2
    int-to-long v3, p1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v3, v4, v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 324
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 325
    return-void

    .line 300
    .end local v2    # "size":I
    .local v1, "j":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public writeLong(J)V
    .locals 10
    .param p1, "i"    # J

    .line 410
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 411
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 412
    return-void

    .line 415
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    neg-long v2, p1

    goto :goto_0

    :cond_1
    move-wide v2, p1

    .line 416
    .local v2, "val":J
    :goto_0
    const/4 v4, 0x0

    .line 417
    .local v4, "size":I
    const-wide/16 v5, 0xa

    .line 418
    .local v5, "p":J
    const/4 v7, 0x1

    .local v7, "j":I
    :goto_1
    const/16 v8, 0x13

    if-ge v7, v8, :cond_3

    .line 419
    cmp-long v8, v2, v5

    if-gez v8, :cond_2

    .line 420
    move v4, v7

    .line 421
    goto :goto_2

    .line 423
    :cond_2
    const-wide/16 v8, 0xa

    mul-long v5, v5, v8

    .line 418
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 426
    .end local v7    # "j":I
    :cond_3
    :goto_2
    if-nez v4, :cond_4

    .line 427
    const/16 v4, 0x13

    .line 429
    :cond_4
    cmp-long v7, p1, v0

    if-gez v7, :cond_5

    .line 430
    add-int/lit8 v4, v4, 0x1

    .line 433
    :cond_5
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v4

    .line 434
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_7

    .line 435
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_6

    .line 436
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_3

    .line 438
    :cond_6
    new-array v1, v4, [C

    .line 439
    .local v1, "chars":[C
    invoke-static {p1, p2, v4, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 440
    const/4 v7, 0x0

    array-length v8, v1

    invoke-virtual {p0, v1, v7, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 441
    return-void

    .line 445
    .end local v1    # "chars":[C
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 447
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 448
    return-void
.end method

.method public writeNull()V
    .locals 1

    .line 451
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 666
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    .line 671
    :goto_0
    return-void
.end method

.method protected writeStringWithDoubleQuote(Ljava/lang/String;CZ)V
    .locals 24
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "seperator"    # C
    .param p3, "checkSpecial"    # Z

    .line 455
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-nez v1, :cond_1

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 457
    if-eqz v2, :cond_0

    .line 458
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 460
    :cond_0
    return-void

    .line 463
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 464
    .local v3, "len":I
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    .line 465
    .local v4, "newcount":I
    if-eqz v2, :cond_2

    .line 466
    add-int/lit8 v4, v4, 0x1

    .line 469
    :cond_2
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    const/16 v6, 0x2f

    const/16 v7, 0x22

    const/16 v8, 0x5c

    if-le v4, v5, :cond_9

    .line 470
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_8

    .line 471
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 473
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_6

    .line 474
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 476
    .local v9, "ch":C
    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    array-length v11, v10

    if-ge v9, v11, :cond_3

    aget-byte v10, v10, v9

    if-nez v10, :cond_4

    :cond_3
    if-ne v9, v6, :cond_5

    iget v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v11, v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_5

    .line 479
    :cond_4
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 480
    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v10, v10, v9

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 481
    goto :goto_1

    .line 484
    :cond_5
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 473
    .end local v9    # "ch":C
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 487
    .end local v5    # "i":I
    :cond_6
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 488
    if-eqz v2, :cond_7

    .line 489
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 491
    :cond_7
    return-void

    .line 493
    :cond_8
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 496
    :cond_9
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v5, 0x1

    .line 497
    .local v9, "start":I
    add-int v10, v9, v3

    .line 499
    .local v10, "end":I
    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v7, v11, v5

    .line 500
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3, v11, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 502
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 504
    const/4 v5, 0x0

    .line 505
    .local v5, "specialCount":I
    const/4 v11, -0x1

    .line 506
    .local v11, "lastSpecialIndex":I
    const/4 v12, -0x1

    .line 507
    .local v12, "firstSpecialIndex":I
    const/4 v13, 0x0

    .line 508
    .local v13, "lastSpecial":C
    if-eqz p3, :cond_20

    .line 509
    move v15, v9

    .local v15, "i":I
    :goto_2
    const/16 v14, 0x2028

    if-ge v15, v10, :cond_15

    .line 510
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v7, v7, v15

    .line 512
    .local v7, "ch":C
    const/4 v8, -0x1

    if-ne v7, v14, :cond_a

    .line 513
    add-int/lit8 v5, v5, 0x1

    .line 514
    move v11, v15

    .line 515
    move v13, v7

    .line 516
    add-int/lit8 v4, v4, 0x4

    .line 518
    if-ne v12, v8, :cond_14

    .line 519
    move v8, v15

    move v12, v8

    .end local v12    # "firstSpecialIndex":I
    .local v8, "firstSpecialIndex":I
    goto/16 :goto_5

    .line 524
    .end local v8    # "firstSpecialIndex":I
    .restart local v12    # "firstSpecialIndex":I
    :cond_a
    const/16 v14, 0x5d

    if-lt v7, v14, :cond_c

    .line 525
    const/16 v14, 0x7f

    if-lt v7, v14, :cond_14

    const/16 v14, 0xa0

    if-ge v7, v14, :cond_14

    .line 526
    if-ne v12, v8, :cond_b

    .line 527
    move v12, v15

    .line 530
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 531
    move v8, v15

    .line 532
    .end local v11    # "lastSpecialIndex":I
    .local v8, "lastSpecialIndex":I
    move v11, v7

    .line 533
    .end local v13    # "lastSpecial":C
    .local v11, "lastSpecial":C
    add-int/lit8 v4, v4, 0x4

    move v13, v11

    move v11, v8

    goto :goto_5

    .line 540
    .end local v8    # "lastSpecialIndex":I
    .local v11, "lastSpecialIndex":I
    .restart local v13    # "lastSpecial":C
    :cond_c
    const/16 v14, 0x20

    if-ne v7, v14, :cond_d

    .line 541
    const/4 v14, 0x0

    .local v14, "isSpecial":Z
    goto :goto_4

    .line 542
    .end local v14    # "isSpecial":Z
    :cond_d
    if-ne v7, v6, :cond_e

    iget v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v14

    if-eqz v6, :cond_e

    .line 543
    const/4 v14, 0x1

    .restart local v14    # "isSpecial":Z
    goto :goto_4

    .line 544
    .end local v14    # "isSpecial":Z
    :cond_e
    const/16 v6, 0x23

    if-le v7, v6, :cond_f

    const/16 v6, 0x5c

    if-eq v7, v6, :cond_f

    .line 545
    const/4 v14, 0x0

    .restart local v14    # "isSpecial":Z
    goto :goto_4

    .line 546
    .end local v14    # "isSpecial":Z
    :cond_f
    const/16 v6, 0x1f

    if-le v7, v6, :cond_11

    const/16 v6, 0x5c

    if-eq v7, v6, :cond_11

    const/16 v6, 0x22

    if-ne v7, v6, :cond_10

    goto :goto_3

    .line 549
    :cond_10
    const/4 v14, 0x0

    .restart local v14    # "isSpecial":Z
    goto :goto_4

    .line 547
    .end local v14    # "isSpecial":Z
    :cond_11
    :goto_3
    const/4 v14, 0x1

    .line 553
    .restart local v14    # "isSpecial":Z
    :goto_4
    if-eqz v14, :cond_14

    .line 554
    add-int/lit8 v5, v5, 0x1

    .line 555
    move v6, v15

    .line 556
    .end local v11    # "lastSpecialIndex":I
    .local v6, "lastSpecialIndex":I
    move v11, v7

    .line 558
    .end local v13    # "lastSpecial":C
    .local v11, "lastSpecial":C
    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    array-length v8, v13

    if-ge v7, v8, :cond_12

    aget-byte v8, v13, v7

    const/4 v13, 0x4

    if-ne v8, v13, :cond_12

    .line 561
    add-int/lit8 v4, v4, 0x4

    .line 564
    :cond_12
    const/4 v8, -0x1

    if-ne v12, v8, :cond_13

    .line 565
    move v8, v15

    move v12, v8

    move v13, v11

    move v11, v6

    .end local v12    # "firstSpecialIndex":I
    .local v8, "firstSpecialIndex":I
    goto :goto_5

    .line 564
    .end local v8    # "firstSpecialIndex":I
    .restart local v12    # "firstSpecialIndex":I
    :cond_13
    move v13, v11

    move v11, v6

    .line 509
    .end local v6    # "lastSpecialIndex":I
    .end local v7    # "ch":C
    .end local v14    # "isSpecial":Z
    .local v11, "lastSpecialIndex":I
    .restart local v13    # "lastSpecial":C
    :cond_14
    :goto_5
    add-int/lit8 v15, v15, 0x1

    const/16 v6, 0x2f

    const/16 v7, 0x22

    const/16 v8, 0x5c

    goto/16 :goto_2

    .line 570
    .end local v15    # "i":I
    :cond_15
    if-lez v5, :cond_1f

    .line 571
    add-int/2addr v4, v5

    .line 572
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v6, v6

    if-le v4, v6, :cond_16

    .line 573
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 575
    :cond_16
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 577
    const/16 v6, 0x75

    const/4 v7, 0x1

    if-ne v5, v7, :cond_19

    .line 578
    if-ne v13, v14, :cond_17

    .line 579
    add-int/lit8 v8, v11, 0x1

    .line 580
    .local v8, "srcPos":I
    add-int/lit8 v14, v11, 0x6

    .line 581
    .local v14, "destPos":I
    sub-int v15, v10, v11

    sub-int/2addr v15, v7

    .line 582
    .local v15, "LengthOfCopy":I
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v7, v8, v7, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v17, 0x5c

    aput-char v17, v7, v11

    .line 584
    add-int/lit8 v11, v11, 0x1

    aput-char v6, v7, v11

    .line 585
    const/4 v6, 0x1

    add-int/2addr v11, v6

    const/16 v16, 0x32

    aput-char v16, v7, v11

    .line 586
    add-int/2addr v11, v6

    const/16 v17, 0x30

    aput-char v17, v7, v11

    .line 587
    add-int/2addr v11, v6

    aput-char v16, v7, v11

    .line 588
    add-int/2addr v11, v6

    const/16 v6, 0x38

    aput-char v6, v7, v11

    .line 589
    .end local v8    # "srcPos":I
    .end local v14    # "destPos":I
    .end local v15    # "LengthOfCopy":I
    move/from16 v21, v3

    goto/16 :goto_9

    .line 590
    :cond_17
    move v7, v13

    .line 591
    .restart local v7    # "ch":C
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    array-length v14, v8

    if-ge v7, v14, :cond_18

    aget-byte v8, v8, v7

    const/4 v14, 0x4

    if-ne v8, v14, :cond_18

    .line 593
    add-int/lit8 v8, v11, 0x1

    .line 594
    .restart local v8    # "srcPos":I
    add-int/lit8 v14, v11, 0x6

    .line 595
    .restart local v14    # "destPos":I
    sub-int v15, v10, v11

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    .line 596
    .restart local v15    # "LengthOfCopy":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v8, v6, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    move v6, v11

    .line 599
    .local v6, "bufIndex":I
    move/from16 v21, v3

    .end local v3    # "len":I
    .local v21, "len":I
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v6, 0x1

    const/16 v18, 0x5c

    .end local v6    # "bufIndex":I
    .local v17, "bufIndex":I
    aput-char v18, v3, v6

    .line 600
    add-int/lit8 v6, v17, 0x1

    const/16 v18, 0x75

    .end local v17    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    aput-char v18, v3, v17

    .line 601
    add-int/lit8 v17, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DIGITS:[C

    ushr-int/lit8 v19, v7, 0xc

    and-int/lit8 v19, v19, 0xf

    aget-char v19, v18, v19

    aput-char v19, v3, v6

    .line 602
    add-int/lit8 v6, v17, 0x1

    .end local v17    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    ushr-int/lit8 v19, v7, 0x8

    and-int/lit8 v19, v19, 0xf

    aget-char v19, v18, v19

    aput-char v19, v3, v17

    .line 603
    add-int/lit8 v17, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    ushr-int/lit8 v19, v7, 0x4

    and-int/lit8 v19, v19, 0xf

    aget-char v19, v18, v19

    aput-char v19, v3, v6

    .line 604
    add-int/lit8 v6, v17, 0x1

    .end local v17    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    and-int/lit8 v19, v7, 0xf

    aget-char v18, v18, v19

    aput-char v18, v3, v17

    .line 605
    .end local v6    # "bufIndex":I
    .end local v8    # "srcPos":I
    .end local v14    # "destPos":I
    .end local v15    # "LengthOfCopy":I
    goto :goto_6

    .line 591
    .end local v21    # "len":I
    .restart local v3    # "len":I
    :cond_18
    move/from16 v21, v3

    .line 606
    .end local v3    # "len":I
    .restart local v21    # "len":I
    add-int/lit8 v3, v11, 0x1

    .line 607
    .local v3, "srcPos":I
    add-int/lit8 v6, v11, 0x2

    .line 608
    .local v6, "destPos":I
    sub-int v8, v10, v11

    const/4 v14, 0x1

    sub-int/2addr v8, v14

    .line 609
    .local v8, "LengthOfCopy":I
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v14, v3, v14, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 610
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v15, 0x5c

    aput-char v15, v14, v11

    .line 611
    add-int/lit8 v11, v11, 0x1

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v15, v15, v7

    aput-char v15, v14, v11

    .line 613
    .end local v3    # "srcPos":I
    .end local v6    # "destPos":I
    .end local v7    # "ch":C
    .end local v8    # "LengthOfCopy":I
    :goto_6
    goto/16 :goto_9

    .line 614
    .end local v21    # "len":I
    .local v3, "len":I
    :cond_19
    move/from16 v21, v3

    .end local v3    # "len":I
    .restart local v21    # "len":I
    const/4 v3, 0x1

    if-le v5, v3, :cond_21

    .line 615
    sub-int v3, v12, v9

    .line 616
    .local v3, "textIndex":I
    move v6, v12

    .line 617
    .local v6, "bufIndex":I
    move v7, v3

    .local v7, "i":I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_21

    .line 618
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 620
    .local v8, "ch":C
    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    array-length v14, v15

    if-ge v8, v14, :cond_1a

    aget-byte v14, v15, v8

    if-nez v14, :cond_1b

    :cond_1a
    const/16 v14, 0x2f

    if-ne v8, v14, :cond_1d

    iget v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v14

    if-eqz v1, :cond_1d

    .line 623
    :cond_1b
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v6, 0x1

    const/16 v18, 0x5c

    .end local v6    # "bufIndex":I
    .local v14, "bufIndex":I
    aput-char v18, v1, v6

    .line 624
    aget-byte v6, v15, v8

    const/4 v15, 0x4

    if-ne v6, v15, :cond_1c

    .line 625
    add-int/lit8 v6, v14, 0x1

    const/16 v17, 0x75

    .end local v14    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    aput-char v17, v1, v14

    .line 626
    add-int/lit8 v14, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v14    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DIGITS:[C

    ushr-int/lit8 v23, v8, 0xc

    and-int/lit8 v23, v23, 0xf

    aget-char v23, v17, v23

    aput-char v23, v1, v6

    .line 627
    add-int/lit8 v6, v14, 0x1

    .end local v14    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    ushr-int/lit8 v23, v8, 0x8

    and-int/lit8 v23, v23, 0xf

    aget-char v23, v17, v23

    aput-char v23, v1, v14

    .line 628
    add-int/lit8 v14, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v14    # "bufIndex":I
    ushr-int/lit8 v23, v8, 0x4

    and-int/lit8 v23, v23, 0xf

    aget-char v23, v17, v23

    aput-char v23, v1, v6

    .line 629
    add-int/lit8 v6, v14, 0x1

    .end local v14    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    and-int/lit8 v23, v8, 0xf

    aget-char v17, v17, v23

    aput-char v17, v1, v14

    .line 630
    add-int/lit8 v10, v10, 0x5

    const/16 v1, 0x2028

    const/16 v18, 0x5c

    const/16 v20, 0x75

    goto :goto_8

    .line 632
    .end local v6    # "bufIndex":I
    .restart local v14    # "bufIndex":I
    :cond_1c
    add-int/lit8 v6, v14, 0x1

    .end local v14    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v17, v17, v8

    aput-char v17, v1, v14

    .line 633
    add-int/lit8 v10, v10, 0x1

    const/16 v1, 0x2028

    const/16 v18, 0x5c

    const/16 v20, 0x75

    goto :goto_8

    .line 620
    :cond_1d
    const/4 v15, 0x4

    .line 636
    const/16 v1, 0x2028

    if-ne v8, v1, :cond_1e

    .line 637
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v6, 0x1

    const/16 v18, 0x5c

    .end local v6    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    aput-char v18, v14, v6

    .line 638
    add-int/lit8 v6, v17, 0x1

    const/16 v20, 0x75

    .end local v17    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    aput-char v20, v14, v17

    .line 639
    add-int/lit8 v17, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DIGITS:[C

    ushr-int/lit8 v23, v8, 0xc

    and-int/lit8 v23, v23, 0xf

    aget-char v23, v22, v23

    aput-char v23, v14, v6

    .line 640
    add-int/lit8 v6, v17, 0x1

    .end local v17    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    ushr-int/lit8 v23, v8, 0x8

    and-int/lit8 v23, v23, 0xf

    aget-char v23, v22, v23

    aput-char v23, v14, v17

    .line 641
    add-int/lit8 v17, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    ushr-int/lit8 v23, v8, 0x4

    and-int/lit8 v23, v23, 0xf

    aget-char v23, v22, v23

    aput-char v23, v14, v6

    .line 642
    add-int/lit8 v6, v17, 0x1

    .end local v17    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    and-int/lit8 v23, v8, 0xf

    aget-char v22, v22, v23

    aput-char v22, v14, v17

    .line 643
    add-int/lit8 v10, v10, 0x5

    goto :goto_8

    .line 645
    :cond_1e
    const/16 v18, 0x5c

    const/16 v20, 0x75

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    aput-char v8, v14, v6

    move/from16 v6, v17

    .line 617
    .end local v8    # "ch":C
    .end local v17    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    :goto_8
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    const/16 v14, 0x2028

    goto/16 :goto_7

    .line 570
    .end local v6    # "bufIndex":I
    .end local v7    # "i":I
    .end local v21    # "len":I
    .local v3, "len":I
    :cond_1f
    move/from16 v21, v3

    .end local v3    # "len":I
    .restart local v21    # "len":I
    goto :goto_9

    .line 508
    .end local v21    # "len":I
    .restart local v3    # "len":I
    :cond_20
    move/from16 v21, v3

    .line 653
    .end local v3    # "len":I
    .restart local v21    # "len":I
    :cond_21
    :goto_9
    if-eqz v2, :cond_22

    .line 654
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v3, -0x2

    const/16 v7, 0x22

    aput-char v7, v1, v6

    .line 655
    const/4 v6, 0x1

    sub-int/2addr v3, v6

    aput-char v2, v1, v3

    goto :goto_a

    .line 657
    :cond_22
    const/4 v6, 0x1

    const/16 v7, 0x22

    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v3, v6

    aput-char v7, v1, v3

    .line 659
    :goto_a
    return-void
.end method

.method protected writeStringWithSingleQuote(Ljava/lang/String;)V
    .locals 18
    .param p1, "text"    # Ljava/lang/String;

    .line 674
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 675
    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v4, 0x4

    add-int/2addr v3, v4

    .line 676
    .local v3, "newcount":I
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-le v3, v5, :cond_0

    .line 677
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 679
    :cond_0
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const-string/jumbo v7, "null"

    invoke-virtual {v7, v2, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 680
    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 681
    return-void

    .line 684
    .end local v3    # "newcount":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 685
    .local v3, "len":I
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    .line 686
    .local v4, "newcount":I
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    const/16 v6, 0x2f

    const/16 v7, 0xd

    const/16 v8, 0x5c

    const/16 v9, 0x27

    if-le v4, v5, :cond_6

    .line 687
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_5

    .line 688
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 689
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 690
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 691
    .local v5, "ch":C
    if-le v5, v7, :cond_3

    if-eq v5, v8, :cond_3

    if-eq v5, v9, :cond_3

    if-ne v5, v6, :cond_2

    iget v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v11, v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_2

    goto :goto_1

    .line 696
    :cond_2
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 693
    :cond_3
    :goto_1
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 694
    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v10, v10, v5

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 689
    .end local v5    # "ch":C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 699
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 700
    return-void

    .line 702
    :cond_5
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 705
    :cond_6
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v5, 0x1

    .line 706
    .local v10, "start":I
    add-int v11, v10, v3

    .line 708
    .local v11, "end":I
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v9, v12, v5

    .line 709
    invoke-virtual {v1, v2, v3, v12, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 710
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 712
    const/4 v2, 0x0

    .line 713
    .local v2, "specialCount":I
    const/4 v5, -0x1

    .line 714
    .local v5, "lastSpecialIndex":I
    const/4 v12, 0x0

    .line 715
    .local v12, "lastSpecial":C
    move v13, v10

    .local v13, "i":I
    :goto_3
    if-ge v13, v11, :cond_9

    .line 716
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v14, v14, v13

    .line 717
    .local v14, "ch":C
    if-le v14, v7, :cond_7

    if-eq v14, v8, :cond_7

    if-eq v14, v9, :cond_7

    if-ne v14, v6, :cond_8

    iget v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v15

    if-eqz v6, :cond_8

    .line 719
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 720
    move v5, v13

    .line 721
    move v6, v14

    move v12, v6

    .line 715
    .end local v14    # "ch":C
    :cond_8
    add-int/lit8 v13, v13, 0x1

    const/16 v6, 0x2f

    goto :goto_3

    .line 725
    .end local v13    # "i":I
    :cond_9
    add-int/2addr v4, v2

    .line 726
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v6, v6

    if-le v4, v6, :cond_a

    .line 727
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 729
    :cond_a
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 731
    const/4 v6, 0x1

    if-ne v2, v6, :cond_b

    .line 732
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v5, 0x1

    add-int/lit8 v14, v5, 0x2

    sub-int v15, v11, v5

    sub-int/2addr v15, v6

    invoke-static {v7, v13, v7, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 733
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v8, v7, v5

    .line 734
    add-int/lit8 v5, v5, 0x1

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v8, v8, v12

    aput-char v8, v7, v5

    goto :goto_6

    .line 735
    :cond_b
    if-le v2, v6, :cond_e

    .line 736
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v5, 0x1

    add-int/lit8 v15, v5, 0x2

    sub-int v16, v11, v5

    add-int/lit8 v9, v16, -0x1

    invoke-static {v13, v14, v13, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 737
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v8, v9, v5

    .line 738
    add-int/lit8 v5, v5, 0x1

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v13, v13, v12

    aput-char v13, v9, v5

    .line 739
    add-int/lit8 v11, v11, 0x1

    .line 740
    add-int/lit8 v9, v5, -0x2

    .local v9, "i":I
    :goto_4
    if-lt v9, v10, :cond_e

    .line 741
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v13, v13, v9

    .line 743
    .local v13, "ch":C
    if-le v13, v7, :cond_c

    if-eq v13, v8, :cond_c

    const/16 v14, 0x27

    if-eq v13, v14, :cond_c

    const/16 v14, 0x2f

    if-ne v13, v14, :cond_d

    iget v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v7, v15

    if-eqz v7, :cond_d

    goto :goto_5

    :cond_c
    const/16 v14, 0x2f

    .line 745
    :goto_5
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v9, 0x1

    add-int/lit8 v14, v9, 0x2

    sub-int v17, v11, v9

    add-int/lit8 v8, v17, -0x1

    invoke-static {v7, v15, v7, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v8, 0x5c

    aput-char v8, v7, v9

    .line 747
    add-int/lit8 v14, v9, 0x1

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v15, v15, v13

    aput-char v15, v7, v14

    .line 748
    add-int/lit8 v11, v11, 0x1

    .line 740
    .end local v13    # "ch":C
    :cond_d
    add-int/lit8 v9, v9, -0x1

    const/16 v7, 0xd

    goto :goto_4

    .line 753
    .end local v9    # "i":I
    :cond_e
    :goto_6
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v8, v6

    const/16 v6, 0x27

    aput-char v6, v7, v8

    .line 754
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 221
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 228
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 229
    return-void

    .line 225
    .end local v0    # "bytes":[B
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 3
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 217
    return-void

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
