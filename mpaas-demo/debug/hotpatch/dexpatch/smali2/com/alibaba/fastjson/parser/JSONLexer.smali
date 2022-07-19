.class public final Lcom/alibaba/fastjson/parser/JSONLexer;
.super Ljava/lang/Object;
.source "JSONLexer.java"


# static fields
.field public static final CA:[C

.field public static final END:I = 0x4

.field public static final EOI:C = '\u001a'

.field static final IA:[I

.field public static final NOT_MATCH:I = -0x1

.field public static final NOT_MATCH_NAME:I = -0x2

.field public static final UNKNOWN:I = 0x0

.field private static V6:Z = false

.field public static final VALUE:I = 0x3

.field protected static final digits:[I

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field private static final sbufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field


# instance fields
.field protected bp:I

.field public calendar:Ljava/util/Calendar;

.field protected ch:C

.field public disableCircularReferenceDetect:Z

.field protected eofPos:I

.field protected exp:Z

.field public features:I

.field protected fieldHash:J

.field protected hasSpecial:Z

.field protected isDouble:Z

.field protected final len:I

.field public locale:Ljava/util/Locale;

.field public matchStat:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected stringDefaultValue:Ljava/lang/String;

.field protected final text:Ljava/lang/String;

.field public timeZone:Ljava/util/TimeZone;

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 36
    const/4 v0, -0x1

    .line 39
    .local v0, "version":I
    :try_start_0
    const-string v1, "android.os.Build$VERSION"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 40
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "SDK_INT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 41
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 44
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    .line 46
    :goto_0
    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    sput-boolean v1, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    .line 79
    .end local v0    # "version":I
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    .line 1942
    const/16 v0, 0x67

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    .line 1945
    const/16 v0, 0x30

    .local v0, "i":I
    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_1

    .line 1946
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v4, v0, -0x30

    aput v4, v1, v0

    .line 1945
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1949
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x61

    .restart local v0    # "i":I
    :goto_3
    const/16 v4, 0x66

    if-gt v0, v4, :cond_2

    .line 1950
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v5, v0, -0x61

    add-int/lit8 v5, v5, 0xa

    aput v5, v4, v0

    .line 1949
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1952
    .end local v0    # "i":I
    :cond_2
    const/16 v0, 0x41

    .restart local v0    # "i":I
    :goto_4
    const/16 v4, 0x46

    if-gt v0, v4, :cond_3

    .line 1953
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v5, v0, -0x41

    add-int/lit8 v5, v5, 0xa

    aput v5, v4, v0

    .line 1952
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4715
    .end local v0    # "i":I
    :cond_3
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    .line 4716
    const/16 v4, 0x100

    new-array v5, v4, [I

    sput-object v5, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    .line 4718
    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 4719
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v0, v0

    .local v0, "iS":I
    :goto_5
    if-ge v5, v0, :cond_4

    .line 4720
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    sget-object v7, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    aget-char v7, v7, v5

    aput v5, v6, v7

    .line 4719
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 4722
    .end local v0    # "iS":I
    .end local v5    # "i":I
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    const/16 v5, 0x3d

    aput v2, v0, v5

    .line 4781
    new-array v0, v4, [Z

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    .line 4783
    const/4 v0, 0x0

    .local v0, "c":C
    :goto_6
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    array-length v5, v2

    const/16 v6, 0x7a

    const/16 v7, 0x5f

    const/16 v8, 0x5a

    const/16 v9, 0x41

    const/16 v10, 0x61

    if-ge v0, v5, :cond_8

    .line 4784
    if-lt v0, v9, :cond_5

    if-gt v0, v8, :cond_5

    .line 4785
    aput-boolean v3, v2, v0

    goto :goto_7

    .line 4786
    :cond_5
    if-lt v0, v10, :cond_6

    if-gt v0, v6, :cond_6

    .line 4787
    aput-boolean v3, v2, v0

    goto :goto_7

    .line 4788
    :cond_6
    if-ne v0, v7, :cond_7

    .line 4789
    aput-boolean v3, v2, v0

    .line 4783
    :cond_7
    :goto_7
    add-int/lit8 v2, v0, 0x1

    int-to-char v0, v2

    goto :goto_6

    .line 4794
    .end local v0    # "c":C
    :cond_8
    new-array v0, v4, [Z

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    .line 4797
    const/4 v0, 0x0

    .restart local v0    # "c":C
    :goto_8
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    array-length v4, v2

    if-ge v0, v4, :cond_d

    .line 4798
    if-lt v0, v9, :cond_9

    if-gt v0, v8, :cond_9

    .line 4799
    aput-boolean v3, v2, v0

    goto :goto_9

    .line 4800
    :cond_9
    if-lt v0, v10, :cond_a

    if-gt v0, v6, :cond_a

    .line 4801
    aput-boolean v3, v2, v0

    goto :goto_9

    .line 4802
    :cond_a
    if-ne v0, v7, :cond_b

    .line 4803
    aput-boolean v3, v2, v0

    goto :goto_9

    .line 4804
    :cond_b
    const/16 v4, 0x30

    if-lt v0, v4, :cond_c

    if-gt v0, v1, :cond_c

    .line 4805
    aput-boolean v3, v2, v0

    .line 4797
    :cond_c
    :goto_9
    add-int/lit8 v2, v0, 0x1

    int-to-char v0, v2

    goto :goto_8

    .line 4808
    .end local v0    # "c":C
    :cond_d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 90
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "features"    # I

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    .line 64
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 73
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    .line 74
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 77
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 102
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 104
    if-nez v2, :cond_0

    .line 105
    const/16 v2, 0x200

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 108
    :cond_0
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 110
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    .line 112
    const/4 v3, -0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 116
    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 117
    .local v3, "index":I
    if-lt v3, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 121
    .end local v3    # "index":I
    const v3, 0xfeff

    if-ne v2, v3, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 125
    :cond_2
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_3

    const-string v1, ""

    :cond_3
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    .line 128
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    .line 129
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I

    .line 94
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>([CII)V

    .line 95
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I
    .param p3, "features"    # I

    .line 98
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    .line 99
    return-void
.end method

.method static checkDate(CCCCCCII)Z
    .locals 6
    .param p0, "y0"    # C
    .param p1, "y1"    # C
    .param p2, "y2"    # C
    .param p3, "y3"    # C
    .param p4, "M0"    # C
    .param p5, "M1"    # C
    .param p6, "d0"    # I
    .param p7, "d1"    # I

    .line 4670
    const/16 v0, 0x31

    const/4 v1, 0x0

    if-lt p0, v0, :cond_12

    const/16 v2, 0x33

    if-le p0, v2, :cond_0

    goto :goto_5

    .line 4673
    :cond_0
    const/16 v3, 0x30

    if-lt p1, v3, :cond_11

    const/16 v4, 0x39

    if-le p1, v4, :cond_1

    goto :goto_4

    .line 4676
    :cond_1
    if-lt p2, v3, :cond_10

    if-le p2, v4, :cond_2

    goto :goto_3

    .line 4679
    :cond_2
    if-lt p3, v3, :cond_f

    if-le p3, v4, :cond_3

    goto :goto_2

    .line 4683
    :cond_3
    const/16 v5, 0x32

    if-ne p4, v3, :cond_5

    .line 4684
    if-lt p5, v0, :cond_4

    if-le p5, v4, :cond_6

    .line 4685
    :cond_4
    return v1

    .line 4687
    :cond_5
    if-ne p4, v0, :cond_e

    .line 4688
    if-eq p5, v3, :cond_6

    if-eq p5, v0, :cond_6

    if-eq p5, v5, :cond_6

    .line 4689
    return v1

    .line 4695
    :cond_6
    if-ne p6, v3, :cond_8

    .line 4696
    if-lt p7, v0, :cond_7

    if-le p7, v4, :cond_c

    .line 4697
    :cond_7
    return v1

    .line 4699
    :cond_8
    if-eq p6, v0, :cond_b

    if-ne p6, v5, :cond_9

    goto :goto_0

    .line 4703
    :cond_9
    if-ne p6, v2, :cond_a

    .line 4704
    if-eq p7, v3, :cond_c

    if-eq p7, v0, :cond_c

    .line 4705
    return v1

    .line 4708
    :cond_a
    return v1

    .line 4700
    :cond_b
    :goto_0
    if-lt p7, v3, :cond_d

    if-le p7, v4, :cond_c

    goto :goto_1

    .line 4711
    :cond_c
    const/4 v0, 0x1

    return v0

    .line 4701
    :cond_d
    :goto_1
    return v1

    .line 4692
    :cond_e
    return v1

    .line 4680
    :cond_f
    :goto_2
    return v1

    .line 4677
    :cond_10
    :goto_3
    return v1

    .line 4674
    :cond_11
    :goto_4
    return v1

    .line 4671
    :cond_12
    :goto_5
    return v1
.end method

.method static checkTime(CCCCCC)Z
    .locals 5
    .param p0, "h0"    # C
    .param p1, "h1"    # C
    .param p2, "m0"    # C
    .param p3, "m1"    # C
    .param p4, "s0"    # C
    .param p5, "s1"    # C

    .line 4616
    const/16 v0, 0x39

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-ne p0, v2, :cond_1

    .line 4617
    if-lt p1, v2, :cond_0

    if-le p1, v0, :cond_4

    .line 4618
    :cond_0
    return v1

    .line 4620
    :cond_1
    const/16 v3, 0x31

    if-ne p0, v3, :cond_3

    .line 4621
    if-lt p1, v2, :cond_2

    if-le p1, v0, :cond_4

    .line 4622
    :cond_2
    return v1

    .line 4624
    :cond_3
    const/16 v3, 0x32

    if-ne p0, v3, :cond_e

    .line 4625
    if-lt p1, v2, :cond_d

    const/16 v3, 0x34

    if-le p1, v3, :cond_4

    goto :goto_0

    .line 4632
    :cond_4
    const/16 v3, 0x35

    const/16 v4, 0x36

    if-lt p2, v2, :cond_6

    if-gt p2, v3, :cond_6

    .line 4633
    if-lt p3, v2, :cond_5

    if-le p3, v0, :cond_7

    .line 4634
    :cond_5
    return v1

    .line 4636
    :cond_6
    if-ne p2, v4, :cond_c

    .line 4637
    if-eq p3, v2, :cond_7

    .line 4638
    return v1

    .line 4644
    :cond_7
    if-lt p4, v2, :cond_9

    if-gt p4, v3, :cond_9

    .line 4645
    if-lt p5, v2, :cond_8

    if-le p5, v0, :cond_a

    .line 4646
    :cond_8
    return v1

    .line 4648
    :cond_9
    if-ne p4, v4, :cond_b

    .line 4649
    if-eq p5, v2, :cond_a

    .line 4650
    return v1

    .line 4656
    :cond_a
    const/4 v0, 0x1

    return v0

    .line 4653
    :cond_b
    return v1

    .line 4641
    :cond_c
    return v1

    .line 4626
    :cond_d
    :goto_0
    return v1

    .line 4629
    :cond_e
    return v1
.end method

.method public static final decodeFast(Ljava/lang/String;II)[B
    .locals 13
    .param p0, "chars"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "charsLen"    # I

    .line 4727
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 4728
    new-array v0, v0, [B

    return-object v0

    .line 4731
    :cond_0
    move v1, p1

    .local v1, "sIx":I
    add-int v2, p1, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 4734
    .local v2, "eIx":I
    :goto_0
    if-ge v1, v2, :cond_1

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget v4, v4, v5

    if-gez v4, :cond_1

    .line 4735
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4738
    :cond_1
    :goto_1
    if-lez v2, :cond_2

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget v4, v4, v5

    if-gez v4, :cond_2

    .line 4739
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4742
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 4743
    .local v4, "pad":I
    :goto_2
    sub-int v5, v2, v1

    add-int/2addr v5, v3

    .line 4744
    .local v5, "cCnt":I
    const/16 v6, 0x4c

    if-le p2, v6, :cond_6

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_5

    div-int/lit8 v0, v5, 0x4e

    :cond_5
    shl-int/2addr v0, v3

    .line 4746
    .local v0, "sepCnt":I
    :cond_6
    sub-int v3, v5, v0

    mul-int/lit8 v3, v3, 0x6

    shr-int/lit8 v3, v3, 0x3

    sub-int/2addr v3, v4

    .line 4747
    .local v3, "len":I
    new-array v6, v3, [B

    .line 4750
    .local v6, "bytes":[B
    const/4 v7, 0x0

    .line 4751
    .local v7, "d":I
    const/4 v8, 0x0

    .local v8, "cc":I
    div-int/lit8 v9, v3, 0x3

    mul-int/lit8 v9, v9, 0x3

    .local v9, "eLen":I
    :goto_3
    if-ge v7, v9, :cond_8

    .line 4753
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "sIx":I
    .local v11, "sIx":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget v1, v10, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "sIx":I
    .local v12, "sIx":I
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v10, v11

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v1, v11

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "sIx":I
    .restart local v11    # "sIx":I
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v12, v10, v12

    shl-int/lit8 v12, v12, 0x6

    or-int/2addr v1, v12

    add-int/lit8 v12, v11, 0x1

    .line 4754
    .end local v11    # "sIx":I
    .restart local v12    # "sIx":I
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v10, v10, v11

    or-int/2addr v1, v10

    .line 4757
    .local v1, "i":I
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "d":I
    .local v10, "d":I
    shr-int/lit8 v11, v1, 0x10

    int-to-byte v11, v11

    aput-byte v11, v6, v7

    .line 4758
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "d":I
    .restart local v7    # "d":I
    shr-int/lit8 v11, v1, 0x8

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    .line 4759
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "d":I
    .restart local v10    # "d":I
    int-to-byte v11, v1

    aput-byte v11, v6, v7

    .line 4762
    if-lez v0, :cond_7

    add-int/lit8 v8, v8, 0x1

    const/16 v7, 0x13

    if-ne v8, v7, :cond_7

    .line 4763
    add-int/lit8 v12, v12, 0x2

    .line 4764
    const/4 v7, 0x0

    move v8, v7

    move v1, v12

    .end local v8    # "cc":I
    .local v7, "cc":I
    goto :goto_4

    .line 4762
    .end local v7    # "cc":I
    .restart local v8    # "cc":I
    :cond_7
    move v1, v12

    .line 4766
    .end local v12    # "sIx":I
    .local v1, "sIx":I
    :goto_4
    move v7, v10

    goto :goto_3

    .line 4768
    .end local v8    # "cc":I
    .end local v9    # "eLen":I
    .end local v10    # "d":I
    .local v7, "d":I
    :cond_8
    if-ge v7, v3, :cond_a

    .line 4770
    const/4 v8, 0x0

    .line 4771
    .local v8, "i":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    sub-int v10, v2, v4

    if-gt v1, v10, :cond_9

    .line 4772
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "sIx":I
    .restart local v11    # "sIx":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget v1, v10, v1

    mul-int/lit8 v10, v9, 0x6

    rsub-int/lit8 v10, v10, 0x12

    shl-int/2addr v1, v10

    or-int/2addr v8, v1

    .line 4771
    add-int/lit8 v9, v9, 0x1

    move v1, v11

    goto :goto_5

    .line 4774
    .end local v9    # "j":I
    .end local v11    # "sIx":I
    .restart local v1    # "sIx":I
    :cond_9
    const/16 v9, 0x10

    .local v9, "r":I
    :goto_6
    if-ge v7, v3, :cond_a

    .line 4775
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "d":I
    .restart local v10    # "d":I
    shr-int v11, v8, v9

    int-to-byte v11, v11

    aput-byte v11, v6, v7

    .line 4774
    add-int/lit8 v9, v9, -0x8

    move v7, v10

    goto :goto_6

    .line 4778
    .end local v8    # "i":I
    .end local v9    # "r":I
    .end local v10    # "d":I
    .restart local v7    # "d":I
    :cond_a
    return-object v6
.end method

.method private matchFieldHash(J)I
    .locals 16
    .param p1, "fieldHashCode"    # J

    .line 2057
    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 2058
    .local v1, "offset":I
    iget-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2059
    .local v2, "fieldQuote":C
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v3, 0x1

    .line 2061
    .local v3, "fieldStartIndex":I
    :goto_0
    const/16 v4, 0x22

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v8, -0x2

    const/16 v11, 0xa

    const/16 v13, 0x20

    if-ne v2, v4, :cond_0

    .line 2062
    goto :goto_1

    .line 2063
    :cond_0
    const/16 v4, 0x27

    if-ne v2, v4, :cond_9

    .line 2064
    nop

    .line 2082
    :goto_1
    const-wide v14, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2083
    .local v14, "hash":J
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v1

    .local v4, "i":I
    :goto_2
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v4, v12, :cond_2

    .line 2084
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 2085
    .local v12, "ch":C
    if-ne v12, v2, :cond_1

    .line 2087
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int v5, v4, v5

    sub-int/2addr v5, v1

    add-int/2addr v1, v5

    .line 2088
    goto :goto_3

    .line 2091
    :cond_1
    int-to-long v9, v12

    xor-long/2addr v9, v14

    .line 2092
    .end local v14    # "hash":J
    .local v9, "hash":J
    const-wide v14, 0x100000001b3L

    mul-long v14, v14, v9

    .line 2083
    .end local v9    # "hash":J
    .end local v12    # "ch":C
    .restart local v14    # "hash":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2095
    .end local v4    # "i":I
    :cond_2
    :goto_3
    cmp-long v4, v14, p1

    if-eqz v4, :cond_3

    .line 2096
    iput-wide v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 2097
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2098
    return v7

    .line 2101
    :cond_3
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v4, v1

    .line 2102
    .local v4, "charIndex":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v7, :cond_4

    const/16 v7, 0x1a

    goto :goto_4

    :cond_4
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2104
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_4
    nop

    .line 2106
    .local v7, "chLocal":C
    :goto_5
    const/16 v8, 0x3a

    if-ne v7, v8, :cond_5

    .line 2107
    add-int/lit8 v1, v1, 0x1

    .line 2108
    nop

    .line 2128
    return v1

    .line 2111
    :cond_5
    if-gt v7, v13, :cond_8

    if-eq v7, v13, :cond_6

    if-eq v7, v11, :cond_6

    const/16 v8, 0xd

    if-eq v7, v8, :cond_6

    const/16 v5, 0x9

    if-eq v7, v5, :cond_6

    if-eq v7, v6, :cond_6

    const/16 v8, 0x8

    if-ne v7, v8, :cond_8

    .line 2118
    :cond_6
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v1, 0x1

    .end local v1    # "offset":I
    .local v9, "offset":I
    add-int v4, v8, v1

    .line 2119
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v1, :cond_7

    const/16 v1, 0x1a

    goto :goto_6

    :cond_7
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2121
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_6
    move v7, v1

    .line 2122
    move v1, v9

    goto :goto_5

    .line 2125
    .end local v9    # "offset":I
    .restart local v1    # "offset":I
    :cond_8
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "match feild error expect \':\'"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2065
    .end local v4    # "charIndex":I
    .end local v7    # "chLocal":C
    .end local v14    # "hash":J
    :cond_9
    if-eq v2, v13, :cond_b

    if-eq v2, v11, :cond_b

    const/16 v4, 0xd

    if-eq v2, v4, :cond_b

    const/16 v4, 0x9

    if-eq v2, v4, :cond_b

    if-eq v2, v6, :cond_b

    const/16 v4, 0x8

    if-ne v2, v4, :cond_a

    goto :goto_7

    .line 2076
    :cond_a
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 2077
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2078
    return v7

    .line 2071
    :cond_b
    :goto_7
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "offset":I
    .local v5, "offset":I
    add-int/2addr v4, v1

    .line 2072
    .restart local v4    # "charIndex":I
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v1, :cond_c

    const/16 v12, 0x1a

    goto :goto_8

    :cond_c
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2074
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    :goto_8
    move v2, v12

    move v1, v5

    goto/16 :goto_0
.end method

.method private static readString([CI)Ljava/lang/String;
    .locals 13
    .param p0, "chars"    # [C
    .param p1, "chars_len"    # I

    .line 825
    new-array v0, p1, [C

    .line 826
    .local v0, "sbuf":[C
    const/4 v1, 0x0

    .line 827
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, p1, :cond_9

    .line 828
    aget-char v4, p0, v2

    .line 830
    .local v4, "ch":C
    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-eq v4, v5, :cond_0

    .line 831
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .local v3, "len":I
    aput-char v4, v0, v1

    .line 832
    move v1, v3

    goto/16 :goto_1

    .line 834
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    aget-char v4, p0, v2

    .line 836
    const/16 v7, 0x22

    if-eq v4, v7, :cond_8

    const/16 v7, 0x27

    if-eq v4, v7, :cond_7

    const/16 v7, 0x46

    if-eq v4, v7, :cond_6

    if-eq v4, v5, :cond_5

    const/16 v5, 0x62

    if-eq v4, v5, :cond_4

    const/16 v5, 0x66

    if-eq v4, v5, :cond_6

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_3

    const/16 v5, 0x72

    if-eq v4, v5, :cond_2

    const/16 v5, 0x78

    const/16 v7, 0x10

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 903
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "unclosed.str.lit"

    invoke-direct {v3, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 871
    :pswitch_0
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/16 v5, 0xb

    aput-char v5, v0, v1

    .line 872
    move v1, v3

    goto/16 :goto_1

    .line 896
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :pswitch_1
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "len":I
    .local v10, "len":I
    new-instance v11, Ljava/lang/String;

    new-array v5, v5, [C

    add-int/lit8 v2, v2, 0x1

    aget-char v12, p0, v2

    aput-char v12, v5, v3

    add-int/2addr v2, v6

    aget-char v3, p0, v2

    aput-char v3, v5, v6

    add-int/2addr v2, v6

    aget-char v3, p0, v2

    aput-char v3, v5, v9

    add-int/2addr v2, v6

    aget-char v3, p0, v2

    aput-char v3, v5, v8

    invoke-direct {v11, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v11, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v0, v1

    .line 901
    move v1, v10

    goto/16 :goto_1

    .line 865
    .end local v10    # "len":I
    .restart local v1    # "len":I
    :pswitch_2
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/16 v5, 0x9

    aput-char v5, v0, v1

    .line 866
    move v1, v3

    goto/16 :goto_1

    .line 859
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :pswitch_3
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/4 v5, 0x7

    aput-char v5, v0, v1

    .line 860
    move v1, v3

    goto/16 :goto_1

    .line 856
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :pswitch_4
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/4 v5, 0x6

    aput-char v5, v0, v1

    .line 857
    move v1, v3

    goto/16 :goto_1

    .line 853
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :pswitch_5
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/4 v5, 0x5

    aput-char v5, v0, v1

    .line 854
    move v1, v3

    goto/16 :goto_1

    .line 850
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :pswitch_6
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    aput-char v5, v0, v1

    .line 851
    move v1, v3

    goto/16 :goto_1

    .line 847
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :pswitch_7
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    aput-char v8, v0, v1

    .line 848
    move v1, v3

    goto/16 :goto_1

    .line 844
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :pswitch_8
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    aput-char v9, v0, v1

    .line 845
    move v1, v3

    goto/16 :goto_1

    .line 841
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :pswitch_9
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    aput-char v6, v0, v1

    .line 842
    move v1, v3

    goto :goto_1

    .line 838
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :pswitch_a
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "len":I
    .local v5, "len":I
    aput-char v3, v0, v1

    .line 839
    move v1, v5

    goto :goto_1

    .line 887
    .end local v5    # "len":I
    .restart local v1    # "len":I
    :pswitch_b
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/16 v5, 0x2f

    aput-char v5, v0, v1

    .line 888
    move v1, v3

    goto :goto_1

    .line 893
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :cond_1
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v2, v2, 0x1

    aget-char v8, p0, v2

    aget v8, v5, v8

    mul-int/lit8 v8, v8, 0x10

    add-int/2addr v2, v6

    aget-char v7, p0, v2

    aget v5, v5, v7

    add-int/2addr v8, v5

    int-to-char v5, v8

    aput-char v5, v0, v1

    .line 894
    move v1, v3

    goto :goto_1

    .line 878
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :cond_2
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/16 v5, 0xd

    aput-char v5, v0, v1

    .line 879
    move v1, v3

    goto :goto_1

    .line 868
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :cond_3
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/16 v5, 0xa

    aput-char v5, v0, v1

    .line 869
    move v1, v3

    goto :goto_1

    .line 862
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :cond_4
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/16 v5, 0x8

    aput-char v5, v0, v1

    .line 863
    move v1, v3

    goto :goto_1

    .line 890
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :cond_5
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    aput-char v5, v0, v1

    .line 891
    move v1, v3

    goto :goto_1

    .line 875
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :cond_6
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/16 v5, 0xc

    aput-char v5, v0, v1

    .line 876
    move v1, v3

    goto :goto_1

    .line 884
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :cond_7
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    aput-char v7, v0, v1

    .line 885
    move v1, v3

    goto :goto_1

    .line 881
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :cond_8
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    aput-char v7, v0, v1

    .line 882
    move v1, v3

    .line 827
    .end local v3    # "len":I
    .end local v4    # "ch":C
    .restart local v1    # "len":I
    :goto_1
    add-int/2addr v2, v6

    goto/16 :goto_0

    .line 906
    .end local v2    # "i":I
    :cond_9
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private scanIdent()V
    .locals 2

    .line 1183
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    .line 1187
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1189
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1190
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    goto :goto_0

    .line 1194
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 1196
    .local v0, "ident":Ljava/lang/String;
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1197
    const/16 v1, 0x8

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 1198
    :cond_1
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1199
    const/4 v1, 0x6

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 1200
    :cond_2
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1201
    const/4 v1, 0x7

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 1202
    :cond_3
    const-string/jumbo v1, "new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1203
    const/16 v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 1204
    :cond_4
    const-string/jumbo v1, "undefined"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1205
    const/16 v1, 0x17

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 1206
    :cond_5
    const-string v1, "Set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1207
    const/16 v1, 0x15

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 1208
    :cond_6
    const-string v1, "TreeSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1209
    const/16 v1, 0x16

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 1211
    :cond_7
    const/16 v1, 0x12

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1214
    :goto_1
    return-void
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 6
    .param p1, "y0"    # C
    .param p2, "y1"    # C
    .param p3, "y2"    # C
    .param p4, "y3"    # C
    .param p5, "M0"    # C
    .param p6, "M1"    # C
    .param p7, "d0"    # C
    .param p8, "d1"    # C

    .line 4660
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 4661
    add-int/lit8 v1, p1, -0x30

    mul-int/lit16 v1, v1, 0x3e8

    add-int/lit8 v2, p2, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    add-int/lit8 v2, p3, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    add-int/lit8 v2, p4, -0x30

    add-int/2addr v1, v2

    .line 4662
    .local v1, "year":I
    add-int/lit8 v2, p5, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, p6, -0x30

    add-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 4663
    .local v2, "month":I
    add-int/lit8 v4, p7, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, p8, -0x30

    add-int/2addr v4, v5

    .line 4664
    .local v4, "day":I
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 4665
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 4666
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 4667
    return-void
.end method

.method private final subString(II)Ljava/lang/String;
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 1225
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v3, p1, p2

    invoke-virtual {v1, p1, v3, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1227
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-direct {v0, v1, v2, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 1229
    :cond_0
    new-array v0, p2, [C

    .line 1230
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v3, p1, p2

    invoke-virtual {v1, p1, v3, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1231
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method


# virtual methods
.method public bytesValue()[B
    .locals 3

    .line 1179
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->decodeFast(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method protected charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 216
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 216
    :goto_0
    return v0
.end method

.method public close()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v1, v0

    const/16 v2, 0x2004

    if-gt v1, v2, :cond_0

    .line 137
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 139
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 140
    return-void
.end method

.method public final config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;
    .param p2, "state"    # Z

    .line 150
    if-eqz p2, :cond_0

    .line 151
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    goto :goto_0

    .line 153
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 156
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    if-ne p1, v0, :cond_2

    .line 157
    if-eqz p2, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    .line 161
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    .line 162
    return-void
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 18
    .param p1, "decimal"    # Z

    .line 1825
    move-object/from16 v1, p0

    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x1

    .line 1826
    .local v2, "charIndex":I
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1828
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    move v3, v0

    .line 1830
    .local v3, "chLocal":C
    const/16 v0, 0x46

    if-ne v3, v0, :cond_1

    .line 1831
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1911
    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 1834
    :cond_1
    const/16 v4, 0x44

    if-ne v3, v4, :cond_2

    .line 1835
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1838
    :cond_2
    if-eqz p1, :cond_3

    .line 1839
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1841
    :cond_3
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v6, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    .line 1842
    .local v5, "index":I
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v3, v6

    .line 1844
    iget v6, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1845
    .local v6, "sp":I
    const/16 v7, 0x4c

    if-eq v3, v7, :cond_4

    const/16 v7, 0x53

    if-eq v3, v7, :cond_4

    const/16 v7, 0x42

    if-eq v3, v7, :cond_4

    if-eq v3, v0, :cond_4

    if-ne v3, v4, :cond_5

    .line 1850
    :cond_4
    add-int/lit8 v6, v6, -0x1

    .line 1856
    :cond_5
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .local v0, "offset":I
    move v4, v6

    .line 1858
    .local v4, "count":I
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v8, v7

    const/4 v9, 0x0

    if-ge v4, v8, :cond_6

    .line 1859
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v10, v0, v4

    invoke-virtual {v8, v0, v10, v7, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1860
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .local v7, "chars":[C
    goto :goto_1

    .line 1862
    .end local v7    # "chars":[C
    :cond_6
    new-array v7, v4, [C

    .line 1863
    .restart local v7    # "chars":[C
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v10, v0, v4

    invoke-virtual {v8, v0, v10, v7, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1866
    :goto_1
    const/16 v8, 0x9

    if-gt v4, v8, :cond_d

    iget-boolean v8, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    if-nez v8, :cond_d

    .line 1867
    const/4 v8, 0x0

    .line 1869
    .local v8, "negative":Z
    const/4 v9, 0x0

    .line 1870
    .local v9, "i":I
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    aget-char v9, v7, v9

    .line 1872
    .local v9, "c":C
    const/16 v11, 0x2d

    if-ne v9, v11, :cond_7

    .line 1873
    const/4 v8, 0x1

    .line 1874
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .local v11, "i":I
    aget-char v10, v7, v10

    move v9, v10

    .line 1875
    const/4 v10, 0x1

    move/from16 v17, v11

    move v11, v10

    move/from16 v10, v17

    .local v10, "off":I
    goto :goto_2

    .line 1876
    .end local v11    # "i":I
    .local v10, "i":I
    :cond_7
    const/16 v11, 0x2b

    if-ne v9, v11, :cond_8

    .line 1877
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .restart local v11    # "i":I
    aget-char v10, v7, v10

    move v9, v10

    .line 1878
    const/4 v10, 0x1

    move/from16 v17, v11

    move v11, v10

    move/from16 v10, v17

    .local v10, "off":I
    goto :goto_2

    .line 1880
    .end local v11    # "i":I
    .local v10, "i":I
    :cond_8
    const/4 v11, 0x0

    .line 1883
    .local v11, "off":I
    :goto_2
    add-int/lit8 v12, v9, -0x30

    .line 1884
    .local v12, "intVal":I
    const/4 v13, 0x0

    .line 1885
    .local v13, "power":I
    :goto_3
    if-ge v10, v4, :cond_b

    .line 1886
    aget-char v14, v7, v10

    move v9, v14

    .line 1888
    const/16 v14, 0x2e

    if-ne v9, v14, :cond_9

    .line 1889
    const/4 v13, 0x1

    .line 1890
    goto :goto_4

    .line 1892
    :cond_9
    add-int/lit8 v14, v9, -0x30

    .line 1893
    .local v14, "digit":I
    mul-int/lit8 v15, v12, 0xa

    add-int/2addr v15, v14

    .line 1895
    .end local v12    # "intVal":I
    .local v15, "intVal":I
    if-eqz v13, :cond_a

    .line 1896
    mul-int/lit8 v13, v13, 0xa

    move v12, v15

    goto :goto_4

    .line 1895
    :cond_a
    move v12, v15

    .line 1885
    .end local v14    # "digit":I
    .end local v15    # "intVal":I
    .restart local v12    # "intVal":I
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1900
    :cond_b
    int-to-double v14, v12

    move/from16 v16, v0

    .end local v0    # "offset":I
    .local v16, "offset":I
    int-to-double v0, v13

    div-double/2addr v14, v0

    .line 1901
    .local v14, "doubleVal":D
    if-eqz v8, :cond_c

    .line 1902
    neg-double v14, v14

    .line 1905
    :cond_c
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1866
    .end local v8    # "negative":Z
    .end local v9    # "c":C
    .end local v10    # "i":I
    .end local v11    # "off":I
    .end local v12    # "intVal":I
    .end local v13    # "power":I
    .end local v14    # "doubleVal":D
    .end local v16    # "offset":I
    .restart local v0    # "offset":I
    :cond_d
    move/from16 v16, v0

    .line 1907
    .end local v0    # "offset":I
    .restart local v16    # "offset":I
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7, v9, v4}, Ljava/lang/String;-><init>([CII)V

    .line 1909
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1912
    .end local v4    # "count":I
    .end local v5    # "index":I
    .end local v6    # "sp":I
    .end local v7    # "chars":[C
    .end local v16    # "offset":I
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :goto_5
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 9

    .line 1917
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 1918
    .local v0, "index":I
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1920
    .local v1, "chLocal":C
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1921
    .local v2, "sp":I
    const/16 v3, 0x4c

    if-eq v1, v3, :cond_0

    const/16 v3, 0x53

    if-eq v1, v3, :cond_0

    const/16 v3, 0x42

    if-eq v1, v3, :cond_0

    const/16 v3, 0x46

    if-eq v1, v3, :cond_0

    const/16 v3, 0x44

    if-ne v1, v3, :cond_1

    .line 1926
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 1931
    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .local v3, "offset":I
    move v4, v2

    .line 1932
    .local v4, "count":I
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v6, v5

    const/4 v7, 0x0

    if-ge v4, v6, :cond_2

    .line 1933
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v8, v3, v4

    invoke-virtual {v6, v3, v8, v5, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1934
    new-instance v5, Ljava/math/BigDecimal;

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-direct {v5, v6, v7, v4}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v5

    .line 1936
    :cond_2
    new-array v5, v4, [C

    .line 1937
    .local v5, "chars":[C
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v8, v3, v4

    invoke-virtual {v6, v3, v8, v5, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1938
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v5}, Ljava/math/BigDecimal;-><init>([C)V

    return-object v6
.end method

.method public info()Ljava/lang/String;
    .locals 4

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const/4 v3, 0x0

    .line 914
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 910
    return-object v0
.end method

.method public final intValue()I
    .locals 12

    .line 1117
    const/4 v0, 0x0

    .line 1118
    .local v0, "result":I
    const/4 v1, 0x0

    .line 1119
    .local v1, "negative":Z
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .local v2, "i":I
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v4, v3

    .line 1123
    .local v4, "max":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v6, 0x1a

    if-lt v3, v5, :cond_0

    const/16 v3, 0x1a

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1125
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_0
    nop

    .line 1126
    .local v3, "chLocal":C
    const/16 v5, 0x2d

    if-ne v3, v5, :cond_1

    .line 1127
    const/4 v1, 0x1

    .line 1128
    const/high16 v5, -0x80000000

    .line 1129
    .local v5, "limit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1131
    .end local v5    # "limit":I
    :cond_1
    const v5, -0x7fffffff

    .line 1133
    .restart local v5    # "limit":I
    :goto_1
    const v7, -0xccccccc

    .line 1134
    .local v7, "multmin":I
    if-ge v2, v4, :cond_3

    .line 1135
    add-int/lit8 v8, v2, 0x1

    .line 1136
    .local v2, "charIndex":I
    .local v8, "i":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v9, :cond_2

    const/16 v9, 0x1a

    goto :goto_2

    :cond_2
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1138
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_2
    move v3, v9

    .line 1140
    add-int/lit8 v9, v3, -0x30

    .line 1141
    .local v9, "digit":I
    neg-int v0, v9

    move v2, v8

    .line 1143
    .end local v8    # "i":I
    .end local v9    # "digit":I
    .local v2, "i":I
    :cond_3
    :goto_3
    if-ge v2, v4, :cond_9

    .line 1146
    add-int/lit8 v8, v2, 0x1

    .line 1147
    .local v2, "charIndex":I
    .restart local v8    # "i":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v9, :cond_4

    const/16 v9, 0x1a

    goto :goto_4

    :cond_4
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1149
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_4
    nop

    .line 1151
    .local v9, "ch":C
    const/16 v10, 0x4c

    if-eq v9, v10, :cond_8

    const/16 v10, 0x53

    if-eq v9, v10, :cond_8

    const/16 v10, 0x42

    if-ne v9, v10, :cond_5

    .line 1152
    goto :goto_5

    .line 1155
    :cond_5
    add-int/lit8 v10, v9, -0x30

    .line 1157
    .local v10, "digit":I
    const v11, -0xccccccc

    if-lt v0, v11, :cond_7

    .line 1160
    mul-int/lit8 v0, v0, 0xa

    .line 1161
    add-int v11, v5, v10

    if-lt v0, v11, :cond_6

    .line 1164
    sub-int/2addr v0, v10

    .line 1165
    .end local v2    # "charIndex":I
    .end local v9    # "ch":C
    move v2, v8

    goto :goto_3

    .line 1162
    .restart local v2    # "charIndex":I
    .restart local v9    # "ch":C
    :cond_6
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1158
    :cond_7
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1167
    .end local v2    # "charIndex":I
    .end local v9    # "ch":C
    .end local v10    # "digit":I
    :cond_8
    :goto_5
    move v2, v8

    .end local v8    # "i":I
    .local v2, "i":I
    :cond_9
    if-eqz v1, :cond_b

    .line 1168
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v6, v6, 0x1

    if-le v2, v6, :cond_a

    .line 1169
    return v0

    .line 1171
    :cond_a
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1174
    :cond_b
    neg-int v6, v0

    return v6
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 604
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 605
    .local v1, "result":J
    const/4 v3, 0x0

    .line 606
    .local v3, "negative":Z
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .local v4, "i":I
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v5, v6

    .line 610
    .local v5, "max":I
    const/16 v6, 0x20

    .line 612
    .local v6, "type":C
    add-int/lit8 v7, v5, -0x1

    .line 613
    .local v7, "charIndex":I
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_0

    const/16 v8, 0x1a

    goto :goto_0

    :cond_0
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 615
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_0
    nop

    .line 617
    .local v8, "chLocal":C
    const/16 v10, 0x53

    const/16 v11, 0x4c

    const/16 v12, 0x42

    if-eq v8, v12, :cond_3

    if-eq v8, v11, :cond_2

    if-eq v8, v10, :cond_1

    goto :goto_1

    .line 623
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 624
    const/16 v6, 0x53

    .line 625
    goto :goto_1

    .line 619
    :cond_2
    add-int/lit8 v5, v5, -0x1

    .line 620
    const/16 v6, 0x4c

    .line 621
    goto :goto_1

    .line 627
    :cond_3
    add-int/lit8 v5, v5, -0x1

    .line 628
    const/16 v6, 0x42

    .line 629
    nop

    .line 634
    :goto_1
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v13, v14, :cond_4

    const/16 v13, 0x1a

    goto :goto_2

    :cond_4
    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 636
    invoke-virtual {v14, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    :goto_2
    move v8, v13

    .line 637
    const/16 v13, 0x2d

    if-ne v8, v13, :cond_5

    .line 638
    const/4 v3, 0x1

    .line 639
    const-wide/high16 v13, -0x8000000000000000L

    .line 640
    .local v13, "limit":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 642
    .end local v13    # "limit":J
    :cond_5
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 644
    .restart local v13    # "limit":J
    :goto_3
    if-ge v4, v5, :cond_7

    .line 645
    add-int/lit8 v15, v4, 0x1

    .end local v4    # "i":I
    .local v15, "i":I
    move v7, v4

    .line 646
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v4, :cond_6

    const/16 v4, 0x1a

    goto :goto_4

    :cond_6
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 648
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_4
    move v8, v4

    .line 649
    add-int/lit8 v4, v8, -0x30

    .line 650
    .local v4, "digit":I
    neg-int v9, v4

    int-to-long v1, v9

    move v4, v15

    .line 652
    .end local v15    # "i":I
    .local v4, "i":I
    :cond_7
    :goto_5
    if-ge v4, v5, :cond_b

    .line 654
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "i":I
    .local v9, "i":I
    move v7, v4

    .line 655
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v4, :cond_8

    const/16 v4, 0x1a

    goto :goto_6

    :cond_8
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 657
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_6
    move v8, v4

    .line 658
    add-int/lit8 v4, v8, -0x30

    .line 659
    .local v4, "digit":I
    const-wide v16, -0xcccccccccccccccL

    cmp-long v15, v1, v16

    if-gez v15, :cond_9

    .line 660
    new-instance v10, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v10

    .line 662
    :cond_9
    const-wide/16 v16, 0xa

    mul-long v1, v1, v16

    .line 663
    int-to-long v10, v4

    add-long/2addr v10, v13

    cmp-long v17, v1, v10

    if-gez v17, :cond_a

    .line 664
    new-instance v10, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v10

    .line 666
    :cond_a
    int-to-long v10, v4

    sub-long/2addr v1, v10

    move v4, v9

    const/16 v10, 0x53

    const/16 v11, 0x4c

    goto :goto_5

    .line 669
    .end local v9    # "i":I
    .local v4, "i":I
    :cond_b
    if-eqz v3, :cond_10

    .line 670
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v9, v9, 0x1

    if-le v4, v9, :cond_f

    .line 671
    const-wide/32 v9, -0x80000000

    cmp-long v11, v1, v9

    if-ltz v11, :cond_e

    const/16 v9, 0x4c

    if-eq v6, v9, :cond_e

    .line 672
    const/16 v9, 0x53

    if-ne v6, v9, :cond_c

    .line 673
    long-to-int v9, v1

    int-to-short v9, v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    return-object v9

    .line 676
    :cond_c
    if-ne v6, v12, :cond_d

    .line 677
    long-to-int v9, v1

    int-to-byte v9, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    return-object v9

    .line 680
    :cond_d
    long-to-int v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    return-object v9

    .line 682
    :cond_e
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    return-object v9

    .line 684
    :cond_f
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 687
    :cond_10
    neg-long v1, v1

    .line 688
    const-wide/32 v9, 0x7fffffff

    cmp-long v11, v1, v9

    if-gtz v11, :cond_13

    const/16 v9, 0x4c

    if-eq v6, v9, :cond_13

    .line 689
    const/16 v9, 0x53

    if-ne v6, v9, :cond_11

    .line 690
    long-to-int v9, v1

    int-to-short v9, v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    return-object v9

    .line 691
    :cond_11
    if-ne v6, v12, :cond_12

    .line 692
    long-to-int v9, v1

    int-to-byte v9, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    return-object v9

    .line 694
    :cond_12
    long-to-int v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    return-object v9

    .line 697
    :cond_13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    return-object v9
.end method

.method public final isBlankInput()Z
    .locals 5

    .line 1247
    const/4 v0, 0x0

    .line 1248
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 1249
    .local v1, "ch":C
    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 1250
    nop

    .line 1265
    .end local v0    # "i":I
    .end local v1    # "ch":C
    return v3

    .line 1253
    .restart local v0    # "i":I
    .restart local v1    # "ch":C
    :cond_0
    const/4 v2, 0x0

    const/16 v4, 0x20

    if-gt v1, v4, :cond_2

    if-eq v1, v4, :cond_1

    const/16 v4, 0xa

    if-eq v1, v4, :cond_1

    const/16 v4, 0xd

    if-eq v1, v4, :cond_1

    const/16 v4, 0x9

    if-eq v1, v4, :cond_1

    const/16 v4, 0xc

    if-eq v1, v4, :cond_1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 1260
    .local v3, "whitespace":Z
    :goto_1
    if-nez v3, :cond_3

    .line 1261
    return v2

    .line 1247
    .end local v1    # "ch":C
    .end local v3    # "whitespace":Z
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;

    .line 165
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final longValue()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1766
    const-wide/16 v0, 0x0

    .line 1767
    .local v0, "result":J
    const/4 v2, 0x0

    .line 1768
    .local v2, "negative":Z
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .local v3, "i":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v5, v4

    .line 1773
    .local v5, "max":I
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    const/16 v6, 0x2d

    if-ne v4, v6, :cond_0

    .line 1774
    const/4 v2, 0x1

    .line 1775
    const-wide/high16 v6, -0x8000000000000000L

    .line 1776
    .local v6, "limit":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1778
    .end local v6    # "limit":J
    :cond_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 1780
    .restart local v6    # "limit":J
    :goto_0
    if-ge v3, v5, :cond_1

    .line 1781
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 1782
    .local v3, "digit":I
    neg-int v8, v3

    int-to-long v0, v8

    move v3, v4

    .line 1784
    .end local v4    # "i":I
    .local v3, "i":I
    :cond_1
    :goto_1
    if-ge v3, v5, :cond_7

    .line 1789
    add-int/lit8 v4, v3, 0x1

    .line 1790
    .local v3, "index":I
    .restart local v4    # "i":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v8, :cond_2

    const/16 v8, 0x1a

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1792
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_2
    move v3, v8

    .line 1795
    .local v3, "chLocal":C
    const/16 v8, 0x4c

    if-eq v3, v8, :cond_6

    const/16 v8, 0x53

    if-eq v3, v8, :cond_6

    const/16 v8, 0x42

    if-ne v3, v8, :cond_3

    .line 1798
    goto :goto_3

    .line 1801
    :cond_3
    add-int/lit8 v8, v3, -0x30

    .line 1802
    .local v8, "digit":I
    const-wide v9, -0xcccccccccccccccL

    cmp-long v11, v0, v9

    if-ltz v11, :cond_5

    .line 1805
    const-wide/16 v9, 0xa

    mul-long v0, v0, v9

    .line 1806
    int-to-long v9, v8

    add-long/2addr v9, v6

    cmp-long v11, v0, v9

    if-ltz v11, :cond_4

    .line 1809
    int-to-long v9, v8

    sub-long/2addr v0, v9

    .line 1810
    .end local v3    # "chLocal":C
    move v3, v4

    goto :goto_1

    .line 1807
    .restart local v3    # "chLocal":C
    :cond_4
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1803
    :cond_5
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1812
    .end local v3    # "chLocal":C
    .end local v8    # "digit":I
    :cond_6
    :goto_3
    move v3, v4

    .end local v4    # "i":I
    .local v3, "i":I
    :cond_7
    if-eqz v2, :cond_9

    .line 1813
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v4, v4, 0x1

    if-le v3, v4, :cond_8

    .line 1814
    return-wide v0

    .line 1816
    :cond_8
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1819
    :cond_9
    neg-long v8, v0

    return-wide v8
.end method

.method public matchField(J)Z
    .locals 18
    .param p1, "fieldHashCode"    # J

    .line 1958
    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1959
    .local v1, "offset":I
    iget-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1960
    .local v2, "fieldQuote":C
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 1962
    .local v3, "fieldStartIndex":I
    :goto_0
    const/16 v5, 0x22

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, -0x2

    const/16 v12, 0xc

    const/16 v13, 0x20

    if-ne v2, v5, :cond_0

    .line 1963
    goto :goto_1

    .line 1964
    :cond_0
    const/16 v5, 0x27

    if-ne v2, v5, :cond_f

    .line 1965
    nop

    .line 1984
    :goto_1
    const-wide v15, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1985
    .local v15, "hash":J
    move v5, v3

    move-wide v14, v15

    .end local v15    # "hash":J
    .local v5, "i":I
    .local v14, "hash":J
    :goto_2
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v5, v6, :cond_2

    .line 1986
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1987
    .local v6, "ch":C
    if-ne v6, v2, :cond_1

    .line 1989
    sub-int v17, v5, v3

    add-int/lit8 v17, v17, 0x1

    add-int v1, v1, v17

    .line 1990
    goto :goto_3

    .line 1993
    :cond_1
    int-to-long v7, v6

    xor-long/2addr v7, v14

    .line 1994
    .end local v14    # "hash":J
    .local v7, "hash":J
    const-wide v14, 0x100000001b3L

    mul-long v14, v14, v7

    .line 1985
    .end local v6    # "ch":C
    .end local v7    # "hash":J
    .restart local v14    # "hash":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1997
    .end local v5    # "i":I
    :cond_2
    :goto_3
    cmp-long v5, v14, p1

    if-eqz v5, :cond_3

    .line 1998
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1999
    iput-wide v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 2000
    return v10

    .line 2003
    :cond_3
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "offset":I
    .local v6, "offset":I
    add-int/2addr v5, v1

    .line 2004
    .local v5, "charIndex":I
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v1, :cond_4

    const/16 v1, 0x1a

    goto :goto_4

    :cond_4
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2006
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_4
    nop

    .line 2008
    .local v1, "chLocal":C
    :goto_5
    const/16 v7, 0x3a

    if-ne v1, v7, :cond_b

    .line 2009
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "offset":I
    .local v8, "offset":I
    add-int/2addr v7, v6

    .line 2010
    .end local v5    # "charIndex":I
    .local v7, "charIndex":I
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v5, :cond_5

    const/16 v5, 0x1a

    goto :goto_6

    :cond_5
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2012
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_6
    move v1, v5

    .line 2013
    nop

    .line 2033
    const/16 v5, 0x7b

    if-ne v1, v5, :cond_7

    .line 2034
    add-int/lit8 v5, v7, 0x1

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2035
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v6, :cond_6

    const/16 v5, 0x1a

    goto :goto_7

    :cond_6
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2037
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_7
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2038
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_a

    .line 2039
    :cond_7
    const/16 v5, 0x5b

    if-ne v1, v5, :cond_9

    .line 2040
    add-int/lit8 v5, v7, 0x1

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2041
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v6, :cond_8

    const/16 v5, 0x1a

    goto :goto_8

    :cond_8
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2043
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_8
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2044
    const/16 v5, 0xe

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_a

    .line 2046
    :cond_9
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2047
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v5, :cond_a

    const/16 v5, 0x1a

    goto :goto_9

    :cond_a
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2049
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_9
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2050
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 2053
    :goto_a
    return v4

    .line 2016
    .end local v7    # "charIndex":I
    .end local v8    # "offset":I
    .restart local v5    # "charIndex":I
    .restart local v6    # "offset":I
    :cond_b
    if-gt v1, v13, :cond_e

    if-eq v1, v13, :cond_c

    if-eq v1, v9, :cond_c

    const/16 v7, 0xd

    if-eq v1, v7, :cond_c

    const/16 v7, 0x9

    if-eq v1, v7, :cond_c

    if-eq v1, v12, :cond_c

    const/16 v7, 0x8

    if-ne v1, v7, :cond_e

    .line 2023
    :cond_c
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "offset":I
    .restart local v8    # "offset":I
    add-int v5, v7, v6

    .line 2024
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v6, :cond_d

    const/16 v6, 0x1a

    goto :goto_b

    :cond_d
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2026
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_b
    move v1, v6

    .line 2027
    move v6, v8

    goto/16 :goto_5

    .line 2030
    .end local v8    # "offset":I
    .restart local v6    # "offset":I
    :cond_e
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v7, "match feild error expect \':\'"

    invoke-direct {v4, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1966
    .end local v5    # "charIndex":I
    .end local v6    # "offset":I
    .end local v14    # "hash":J
    .local v1, "offset":I
    :cond_f
    if-gt v2, v13, :cond_12

    if-eq v2, v13, :cond_10

    if-eq v2, v9, :cond_10

    const/16 v5, 0xd

    if-eq v2, v5, :cond_10

    const/16 v5, 0x9

    if-eq v2, v5, :cond_10

    if-eq v2, v12, :cond_10

    const/16 v5, 0x8

    if-ne v2, v5, :cond_12

    .line 1973
    :cond_10
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v5, v1

    .line 1974
    .restart local v5    # "charIndex":I
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v1, :cond_11

    const/16 v14, 0x1a

    goto :goto_c

    :cond_11
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1976
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_c
    move v2, v14

    move v1, v6

    goto/16 :goto_0

    .line 1978
    .end local v5    # "charIndex":I
    .end local v6    # "offset":I
    .restart local v1    # "offset":I
    :cond_12
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 1979
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1980
    return v10
.end method

.method public next()C
    .locals 2

    .line 143
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 144
    .local v0, "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1a

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_0
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 144
    return v1
.end method

.method public final nextIdent()V
    .locals 2

    .line 582
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 589
    .local v1, "whitespace":Z
    :goto_1
    if-nez v1, :cond_4

    .line 590
    nop

    .line 595
    .end local v1    # "whitespace":Z
    const/16 v1, 0x5f

    if-eq v0, v1, :cond_3

    .line 596
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 599
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_3

    .line 597
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanIdent()V

    .line 601
    :goto_3
    return-void

    .line 592
    .restart local v1    # "whitespace":Z
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 593
    .end local v1    # "whitespace":Z
    goto :goto_0
.end method

.method public final nextToken()V
    .locals 16

    .line 222
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 225
    :goto_0
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 227
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipComment()V

    .line 229
    goto :goto_0

    .line 232
    :cond_0
    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    .line 234
    return-void

    .line 237
    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_3

    :cond_2
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_4

    .line 238
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    .line 239
    return-void

    .line 242
    :cond_4
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_5

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 244
    const/16 v1, 0x10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 245
    return-void

    .line 248
    :cond_5
    const/16 v5, 0xc

    if-eq v3, v5, :cond_20

    const/16 v6, 0xd

    if-eq v3, v6, :cond_20

    const/16 v7, 0x20

    if-eq v3, v7, :cond_20

    const/16 v8, 0x3a

    if-eq v3, v8, :cond_1f

    const/16 v9, 0x5b

    const/4 v10, 0x1

    const/16 v11, 0x1a

    if-eq v3, v9, :cond_1d

    const/16 v9, 0x5d

    if-eq v3, v9, :cond_1c

    const/16 v12, 0x66

    const/16 v13, 0x8

    const/16 v14, 0x9

    const/16 v15, 0xa

    const/16 v1, 0x7d

    if-eq v3, v12, :cond_19

    const/16 v12, 0x6e

    if-eq v3, v12, :cond_14

    const/16 v12, 0x7b

    if-eq v3, v12, :cond_12

    if-eq v3, v1, :cond_10

    const/16 v12, 0x53

    if-eq v3, v12, :cond_f

    const/16 v12, 0x54

    if-eq v3, v12, :cond_f

    const/16 v12, 0x74

    if-eq v3, v12, :cond_c

    const/16 v1, 0x75

    if-eq v3, v1, :cond_f

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    .line 388
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-eq v2, v1, :cond_7

    if-ne v3, v11, :cond_6

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v1, 0x1

    .line 389
    .local v1, "eof":Z
    :goto_2
    if-eqz v1, :cond_9

    .line 390
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v3, 0x14

    if-eq v2, v3, :cond_8

    .line 394
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 395
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->eofPos:I

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    goto :goto_3

    .line 391
    :cond_8
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "EOF error"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 397
    :cond_9
    const/16 v2, 0x1f

    if-le v3, v2, :cond_b

    const/16 v2, 0x7f

    if-ne v3, v2, :cond_a

    goto :goto_4

    .line 401
    :cond_a
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 405
    :goto_3
    return-void

    .line 398
    :cond_b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 399
    goto/16 :goto_9

    .line 346
    .end local v1    # "eof":Z
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 347
    const/16 v1, 0xb

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 348
    return-void

    .line 342
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 343
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 344
    return-void

    .line 250
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    .line 251
    return-void

    .line 262
    :cond_c
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v10, "true"

    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 263
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 264
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 266
    if-eq v2, v7, :cond_d

    if-eq v2, v4, :cond_d

    if-eq v2, v1, :cond_d

    if-eq v2, v9, :cond_d

    if-eq v2, v15, :cond_d

    if-eq v2, v6, :cond_d

    if-eq v2, v14, :cond_d

    if-eq v2, v11, :cond_d

    if-eq v2, v5, :cond_d

    if-eq v2, v13, :cond_d

    if-ne v2, v8, :cond_e

    .line 277
    :cond_d
    const/4 v1, 0x6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 278
    return-void

    .line 281
    :cond_e
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "scan true error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanIdent()V

    .line 287
    return-void

    .line 376
    :cond_10
    add-int/2addr v2, v10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move v1, v2

    .line 377
    .local v1, "index":I
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_11

    goto :goto_5

    :cond_11
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 379
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_5
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 381
    .end local v1    # "index":I
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 382
    return-void

    .line 366
    :cond_12
    add-int/2addr v2, v10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move v1, v2

    .line 367
    .restart local v1    # "index":I
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_13

    goto :goto_6

    :cond_13
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 369
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_6
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 371
    .end local v1    # "index":I
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 372
    return-void

    .line 313
    :cond_14
    const/4 v3, 0x0

    .line 314
    .local v3, "token":I
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v10, "null"

    invoke-virtual {v8, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 315
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 316
    const/16 v3, 0x8

    goto :goto_7

    .line 317
    :cond_15
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const-string/jumbo v10, "new"

    invoke-virtual {v2, v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 318
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 319
    const/16 v3, 0x9

    .line 322
    :cond_16
    :goto_7
    if-eqz v3, :cond_18

    .line 323
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 324
    if-eq v2, v7, :cond_17

    if-eq v2, v4, :cond_17

    if-eq v2, v1, :cond_17

    if-eq v2, v9, :cond_17

    if-eq v2, v15, :cond_17

    if-eq v2, v6, :cond_17

    if-eq v2, v14, :cond_17

    if-eq v2, v11, :cond_17

    if-eq v2, v5, :cond_17

    if-ne v2, v13, :cond_18

    .line 334
    :cond_17
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 335
    return-void

    .line 339
    :cond_18
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "scan null/new error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    .end local v3    # "token":I
    :cond_19
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v10, "false"

    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 291
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 292
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 294
    if-eq v2, v7, :cond_1a

    if-eq v2, v4, :cond_1a

    if-eq v2, v1, :cond_1a

    if-eq v2, v9, :cond_1a

    if-eq v2, v15, :cond_1a

    if-eq v2, v6, :cond_1a

    if-eq v2, v14, :cond_1a

    if-eq v2, v11, :cond_1a

    if-eq v2, v5, :cond_1a

    if-eq v2, v13, :cond_1a

    if-ne v2, v8, :cond_1b

    .line 305
    :cond_1a
    const/4 v1, 0x7

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 306
    return-void

    .line 309
    :cond_1b
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "scan false error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 361
    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 362
    return-void

    .line 352
    :cond_1d
    add-int/2addr v2, v10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move v1, v2

    .line 353
    .restart local v1    # "index":I
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_1e

    goto :goto_8

    :cond_1e
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 355
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_8
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 357
    .end local v1    # "index":I
    const/16 v1, 0xe

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 358
    return-void

    .line 384
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 385
    const/16 v1, 0x11

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 386
    return-void

    .line 258
    :cond_20
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 259
    nop

    .line 405
    :goto_9
    const/4 v1, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextToken(I)V
    .locals 10
    .param p1, "expect"    # I

    .line 412
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 415
    :goto_0
    const/4 v0, 0x2

    const/16 v1, 0xd

    const/16 v2, 0x39

    const/16 v3, 0x22

    const/16 v4, 0x30

    const/16 v5, 0xe

    const/16 v6, 0x5b

    const/16 v7, 0x7b

    const/16 v8, 0xc

    if-eq p1, v0, :cond_11

    const/4 v0, 0x4

    const/16 v9, 0x1a

    if-eq p1, v0, :cond_d

    if-eq p1, v8, :cond_9

    const/16 v0, 0x12

    if-eq p1, v0, :cond_8

    const/16 v0, 0x14

    if-eq p1, v0, :cond_7

    const/16 v2, 0xf

    const/16 v3, 0x5d

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    .line 441
    :pswitch_0
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_1

    .line 442
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 445
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 446
    .local v0, "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 448
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_1
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 450
    .end local v0    # "index":I
    return-void

    .line 453
    :cond_1
    const/16 v5, 0x7d

    if-ne v4, v5, :cond_3

    .line 454
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 457
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 458
    .restart local v0    # "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 460
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_2
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 462
    .end local v0    # "index":I
    return-void

    .line 465
    :cond_3
    if-ne v4, v3, :cond_5

    .line 466
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 469
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 470
    .restart local v0    # "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 472
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_3
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 474
    .end local v0    # "index":I
    return-void

    .line 477
    :cond_5
    if-ne v4, v9, :cond_15

    .line 478
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 479
    return-void

    .line 547
    :pswitch_1
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v4, v3, :cond_7

    .line 548
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 549
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 550
    return-void

    .line 534
    :pswitch_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v6, :cond_6

    .line 535
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 536
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 537
    return-void

    .line 540
    :cond_6
    if-ne v0, v7, :cond_15

    .line 541
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 542
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 543
    return-void

    .line 553
    :cond_7
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v9, :cond_15

    .line 554
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 555
    return-void

    .line 559
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextIdent()V

    .line 560
    return-void

    .line 417
    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v7, :cond_b

    .line 418
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 421
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 422
    .restart local v0    # "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_a

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 424
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_4
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 426
    .end local v0    # "index":I
    return-void

    .line 428
    :cond_b
    if-ne v0, v6, :cond_15

    .line 429
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 432
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 433
    .restart local v0    # "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_c

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 435
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_5
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 437
    .end local v0    # "index":I
    return-void

    .line 509
    :cond_d
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v3, :cond_e

    .line 510
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 511
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    .line 512
    return-void

    .line 515
    :cond_e
    if-lt v0, v4, :cond_f

    if-gt v0, v2, :cond_f

    .line 516
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 517
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    .line 518
    return-void

    .line 521
    :cond_f
    if-ne v0, v7, :cond_15

    .line 522
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 525
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 526
    .restart local v0    # "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_10

    goto :goto_6

    :cond_10
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 528
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_6
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 530
    .end local v0    # "index":I
    return-void

    .line 483
    :cond_11
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v0, v4, :cond_12

    if-gt v0, v2, :cond_12

    .line 484
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 485
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    .line 486
    return-void

    .line 489
    :cond_12
    if-ne v0, v3, :cond_13

    .line 490
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 491
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    .line 492
    return-void

    .line 495
    :cond_13
    if-ne v0, v6, :cond_14

    .line 496
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 497
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 498
    return-void

    .line 501
    :cond_14
    if-ne v0, v7, :cond_15

    .line 502
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 503
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 504
    return-void

    .line 565
    :cond_15
    :goto_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x20

    if-eq v0, v2, :cond_17

    const/16 v2, 0xa

    if-eq v0, v2, :cond_17

    if-eq v0, v1, :cond_17

    const/16 v1, 0x9

    if-eq v0, v1, :cond_17

    if-eq v0, v8, :cond_17

    const/16 v1, 0x8

    if-ne v0, v1, :cond_16

    goto :goto_8

    .line 575
    :cond_16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 576
    nop

    .line 578
    return-void

    .line 571
    :cond_17
    :goto_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 572
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .locals 3
    .param p1, "expect"    # C

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 172
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, p1, :cond_1

    .line 175
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 176
    .local v0, "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1a

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_1
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 180
    .end local v0    # "index":I
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 181
    return-void

    .line 184
    :cond_1
    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    goto :goto_2

    .line 194
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 191
    goto :goto_0
.end method

.method public final numberString()Ljava/lang/String;
    .locals 4

    .line 199
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 200
    .local v0, "index":I
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 202
    .local v1, "chLocal":C
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 203
    .local v2, "sp":I
    const/16 v3, 0x4c

    if-eq v1, v3, :cond_0

    const/16 v3, 0x53

    if-eq v1, v3, :cond_0

    const/16 v3, 0x42

    if-eq v1, v3, :cond_0

    const/16 v3, 0x46

    if-eq v1, v3, :cond_0

    const/16 v3, 0x44

    if-ne v1, v3, :cond_1

    .line 208
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 212
    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-direct {p0, v3, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public scanBoolean()Z
    .locals 3

    .line 1428
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const-string v2, "false"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    const/4 v0, 0x5

    .line 1430
    .local v0, "offset":I
    const/4 v1, 0x0

    .local v1, "value":Z
    goto :goto_0

    .line 1431
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1432
    const/4 v0, 0x4

    .line 1433
    .restart local v0    # "offset":I
    const/4 v1, 0x1

    .restart local v1    # "value":Z
    goto :goto_0

    .line 1434
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x31

    if-ne v0, v1, :cond_2

    .line 1435
    const/4 v0, 0x1

    .line 1436
    .restart local v0    # "offset":I
    const/4 v1, 0x1

    .restart local v1    # "value":Z
    goto :goto_0

    .line 1437
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :cond_2
    const/16 v1, 0x30

    if-ne v0, v1, :cond_3

    .line 1438
    const/4 v0, 0x1

    .line 1439
    .restart local v0    # "offset":I
    const/4 v1, 0x0

    .line 1445
    .restart local v1    # "value":Z
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1446
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1448
    return v1

    .line 1441
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1442
    const/4 v0, 0x0

    return v0
.end method

.method public scanFieldBoolean(J)Z
    .locals 15
    .param p1, "fieldHashCode"    # J

    .line 2834
    move-object v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2836
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    .line 2837
    .local v2, "offset":I
    if-nez v2, :cond_0

    .line 2838
    return v1

    .line 2842
    :cond_0
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v2

    const-string v5, "false"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, -0x1

    const/4 v6, 0x3

    if-eqz v3, :cond_1

    .line 2843
    add-int/lit8 v2, v2, 0x5

    .line 2844
    const/4 v3, 0x0

    .local v3, "value":Z
    goto/16 :goto_0

    .line 2845
    .end local v3    # "value":Z
    :cond_1
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v7, v2

    const-string/jumbo v8, "true"

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2846
    add-int/2addr v2, v4

    .line 2847
    const/4 v3, 0x1

    .restart local v3    # "value":Z
    goto :goto_0

    .line 2848
    .end local v3    # "value":Z
    :cond_2
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v7, v2

    const-string v8, "\"false\""

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2849
    add-int/lit8 v2, v2, 0x7

    .line 2850
    const/4 v3, 0x0

    .restart local v3    # "value":Z
    goto :goto_0

    .line 2851
    .end local v3    # "value":Z
    :cond_3
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v7, v2

    const-string v8, "\"true\""

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2852
    add-int/lit8 v2, v2, 0x6

    .line 2853
    const/4 v3, 0x1

    .restart local v3    # "value":Z
    goto :goto_0

    .line 2854
    .end local v3    # "value":Z
    :cond_4
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v7, v2

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x31

    if-ne v3, v7, :cond_5

    .line 2855
    add-int/lit8 v2, v2, 0x1

    .line 2856
    const/4 v3, 0x1

    .restart local v3    # "value":Z
    goto :goto_0

    .line 2857
    .end local v3    # "value":Z
    :cond_5
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v7, v2

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x30

    if-ne v3, v7, :cond_6

    .line 2858
    add-int/lit8 v2, v2, 0x1

    .line 2859
    const/4 v3, 0x0

    .restart local v3    # "value":Z
    goto :goto_0

    .line 2860
    .end local v3    # "value":Z
    :cond_6
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v7, v2

    const-string v8, "\"1\""

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2861
    add-int/2addr v2, v6

    .line 2862
    const/4 v3, 0x1

    .restart local v3    # "value":Z
    goto :goto_0

    .line 2863
    .end local v3    # "value":Z
    :cond_7
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v7, v2

    const-string v8, "\"0\""

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2864
    add-int/2addr v2, v6

    .line 2865
    const/4 v3, 0x0

    .line 2872
    .restart local v3    # "value":Z
    :goto_0
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "offset":I
    .local v8, "offset":I
    add-int/2addr v7, v2

    .line 2873
    .local v7, "charIndex":I
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v9, 0x1a

    if-lt v7, v2, :cond_8

    const/16 v2, 0x1a

    goto :goto_1

    :cond_8
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2875
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    nop

    .line 2878
    .local v2, "chLocal":C
    :goto_2
    const/16 v10, 0x10

    const/16 v11, 0x2c

    if-ne v2, v11, :cond_a

    .line 2879
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v8, -0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2882
    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2883
    .local v1, "index":I
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_9

    goto :goto_3

    :cond_9
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2885
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_3
    iput-char v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2887
    .end local v1    # "index":I
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2888
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2890
    return v3

    .line 2891
    :cond_a
    const/16 v12, 0xd

    const/16 v13, 0x7d

    if-eq v2, v13, :cond_d

    const/16 v14, 0x20

    if-eq v2, v14, :cond_b

    const/16 v14, 0xa

    if-eq v2, v14, :cond_b

    if-eq v2, v12, :cond_b

    const/16 v14, 0x9

    if-eq v2, v14, :cond_b

    const/16 v14, 0xc

    if-eq v2, v14, :cond_b

    const/16 v14, 0x8

    if-ne v2, v14, :cond_d

    .line 2898
    :cond_b
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v8, 0x1

    .end local v8    # "offset":I
    .local v11, "offset":I
    add-int v7, v10, v8

    .line 2899
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_c

    const/16 v8, 0x1a

    goto :goto_4

    :cond_c
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2901
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_4
    move v2, v8

    .line 2902
    move v8, v11

    goto :goto_2

    .line 2907
    .end local v11    # "offset":I
    .restart local v8    # "offset":I
    :cond_d
    if-ne v2, v13, :cond_15

    .line 2908
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v8, 0x1

    .end local v8    # "offset":I
    .local v14, "offset":I
    add-int/2addr v6, v8

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 2909
    if-ne v2, v11, :cond_f

    .line 2910
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2911
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v14, -0x1

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2914
    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2915
    .restart local v1    # "index":I
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v5, :cond_e

    goto :goto_5

    :cond_e
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2917
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_5
    iput-char v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2918
    .end local v1    # "index":I
    goto :goto_8

    .line 2919
    :cond_f
    const/16 v6, 0x5d

    if-ne v2, v6, :cond_11

    .line 2920
    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2921
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v14, -0x1

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2924
    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2925
    .restart local v1    # "index":I
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v5, :cond_10

    goto :goto_6

    :cond_10
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2927
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_6
    iput-char v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2928
    .end local v1    # "index":I
    goto :goto_8

    .line 2929
    :cond_11
    if-ne v2, v13, :cond_13

    .line 2930
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2931
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v14, -0x1

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2934
    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2935
    .restart local v1    # "index":I
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v5, :cond_12

    goto :goto_7

    :cond_12
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2937
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_7
    iput-char v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2938
    .end local v1    # "index":I
    goto :goto_8

    .line 2939
    :cond_13
    if-ne v2, v9, :cond_14

    .line 2940
    const/16 v1, 0x14

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2941
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v14, -0x1

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2942
    iput-char v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2947
    :goto_8
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2953
    return v3

    .line 2944
    :cond_14
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2945
    return v1

    .line 2949
    .end local v14    # "offset":I
    .restart local v8    # "offset":I
    :cond_15
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2950
    return v1

    .line 2867
    .end local v3    # "value":Z
    .end local v7    # "charIndex":I
    .end local v8    # "offset":I
    .local v2, "offset":I
    :cond_16
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2868
    return v1
.end method

.method public scanFieldDate(J)Ljava/util/Date;
    .locals 19
    .param p1, "fieldHashCode"    # J

    .line 2678
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2680
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    .line 2681
    .local v2, "offset":I
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2682
    return-object v3

    .line 2685
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2686
    .local v4, "startPos":I
    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2691
    .local v5, "startChar":C
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "offset":I
    .local v7, "offset":I
    add-int/2addr v6, v2

    .line 2692
    .local v6, "index":I
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v8, 0x1a

    if-lt v6, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2694
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    nop

    .line 2700
    .end local v6    # "index":I
    .local v2, "chLocal":C
    const/16 v6, 0x22

    const/4 v9, -0x1

    if-ne v2, v6, :cond_5

    .line 2701
    const/4 v10, 0x1

    .line 2703
    .local v10, "quote":Z
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v12, v11, v7

    .line 2705
    .local v12, "startIndex":I
    add-int/lit8 v13, v7, 0x1

    .end local v7    # "offset":I
    .local v13, "offset":I
    add-int/2addr v11, v7

    .line 2706
    .local v11, "index":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v11, v7, :cond_2

    const/16 v7, 0x1a

    goto :goto_1

    :cond_2
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2708
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_1
    move v2, v7

    .line 2712
    .end local v11    # "index":I
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v11, v13

    invoke-virtual {v7, v6, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 2713
    .local v6, "endIndex":I
    if-eq v6, v9, :cond_4

    .line 2716
    sub-int v7, v6, v12

    .line 2717
    .local v7, "rest":I
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2718
    invoke-virtual {v0, v1, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(ZI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2719
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 2726
    .local v1, "dateVal":Ljava/util/Date;
    add-int/2addr v13, v7

    .line 2727
    add-int/lit8 v11, v13, 0x1

    .end local v13    # "offset":I
    .local v11, "offset":I
    add-int/2addr v13, v4

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 2728
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2729
    .end local v6    # "endIndex":I
    .end local v7    # "rest":I
    .end local v10    # "quote":Z
    .end local v12    # "startIndex":I
    goto/16 :goto_6

    .line 2721
    .end local v1    # "dateVal":Ljava/util/Date;
    .end local v11    # "offset":I
    .restart local v6    # "endIndex":I
    .restart local v7    # "rest":I
    .restart local v10    # "quote":Z
    .restart local v12    # "startIndex":I
    .restart local v13    # "offset":I
    :cond_3
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2722
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2723
    return-object v3

    .line 2714
    .end local v7    # "rest":I
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v3, "unclosed str"

    invoke-direct {v1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2729
    .end local v6    # "endIndex":I
    .end local v10    # "quote":Z
    .end local v12    # "startIndex":I
    .end local v13    # "offset":I
    .local v7, "offset":I
    :cond_5
    const/16 v1, 0x30

    if-lt v2, v1, :cond_16

    const/16 v10, 0x39

    if-gt v2, v10, :cond_16

    .line 2731
    add-int/lit8 v11, v2, -0x30

    int-to-long v11, v11

    .line 2735
    .local v11, "millis":J
    :goto_2
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v7, 0x1

    .end local v7    # "offset":I
    .local v14, "offset":I
    add-int/2addr v13, v7

    .line 2736
    .local v13, "index":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v13, v7, :cond_6

    const/16 v7, 0x1a

    goto :goto_3

    :cond_6
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2738
    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_3
    move v2, v7

    .line 2740
    .end local v13    # "index":I
    if-lt v2, v1, :cond_7

    if-gt v2, v10, :cond_7

    .line 2741
    const-wide/16 v15, 0xa

    mul-long v15, v15, v11

    add-int/lit8 v7, v2, -0x30

    move-wide/from16 v17, v11

    .end local v11    # "millis":J
    .local v17, "millis":J
    int-to-long v10, v7

    add-long v11, v15, v10

    move v7, v14

    const/16 v10, 0x39

    .end local v17    # "millis":J
    .restart local v11    # "millis":J
    goto :goto_2

    .line 2740
    :cond_7
    move-wide/from16 v17, v11

    .line 2742
    .end local v11    # "millis":J
    .restart local v17    # "millis":J
    const/16 v1, 0x2e

    if-ne v2, v1, :cond_8

    .line 2743
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2744
    return-object v3

    .line 2745
    :cond_8
    if-ne v2, v6, :cond_a

    .line 2746
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v14, 0x1

    .end local v14    # "offset":I
    .local v6, "offset":I
    add-int/2addr v1, v14

    .line 2747
    .local v1, "index":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v7, :cond_9

    const/16 v7, 0x1a

    goto :goto_4

    :cond_9
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2749
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_4
    move v2, v7

    .line 2750
    move v11, v6

    goto :goto_5

    .line 2745
    .end local v1    # "index":I
    .end local v6    # "offset":I
    .restart local v14    # "offset":I
    :cond_a
    move v11, v14

    .line 2755
    .end local v14    # "offset":I
    .local v11, "offset":I
    :goto_5
    const-wide/16 v6, 0x0

    cmp-long v1, v17, v6

    if-gez v1, :cond_b

    .line 2756
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2757
    return-object v3

    .line 2760
    :cond_b
    new-instance v1, Ljava/util/Date;

    move-wide/from16 v6, v17

    .end local v17    # "millis":J
    .local v6, "millis":J
    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 2766
    .end local v6    # "millis":J
    .local v1, "dateVal":Ljava/util/Date;
    :goto_6
    const/16 v6, 0x10

    const/16 v7, 0x2c

    if-ne v2, v7, :cond_d

    .line 2767
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v11, -0x1

    add-int/2addr v3, v7

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2770
    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2771
    .local v3, "index":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v7, :cond_c

    goto :goto_7

    :cond_c
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2773
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_7
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2775
    .end local v3    # "index":I
    const/4 v3, 0x3

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2776
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2777
    return-object v1

    .line 2780
    :cond_d
    const/16 v10, 0x7d

    if-ne v2, v10, :cond_15

    .line 2781
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v11, 0x1

    .end local v11    # "offset":I
    .local v13, "offset":I
    add-int/2addr v12, v11

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 2782
    if-ne v2, v7, :cond_f

    .line 2783
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2784
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v13, -0x1

    add-int/2addr v3, v6

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2787
    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2788
    .restart local v3    # "index":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v6, :cond_e

    goto :goto_8

    :cond_e
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2790
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_8
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2791
    .end local v3    # "index":I
    goto :goto_b

    .line 2792
    :cond_f
    const/16 v6, 0x5d

    if-ne v2, v6, :cond_11

    .line 2793
    const/16 v3, 0xf

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2794
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v13, -0x1

    add-int/2addr v3, v6

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2797
    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2798
    .restart local v3    # "index":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v6, :cond_10

    goto :goto_9

    :cond_10
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2800
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_9
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2801
    .end local v3    # "index":I
    goto :goto_b

    .line 2802
    :cond_11
    if-ne v2, v10, :cond_13

    .line 2803
    const/16 v3, 0xd

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2804
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v13, -0x1

    add-int/2addr v3, v6

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2807
    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2808
    .restart local v3    # "index":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v6, :cond_12

    goto :goto_a

    :cond_12
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2810
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_a
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2811
    .end local v3    # "index":I
    goto :goto_b

    .line 2812
    :cond_13
    if-ne v2, v8, :cond_14

    .line 2813
    const/16 v3, 0x14

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2814
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v13, -0x1

    add-int/2addr v3, v6

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2815
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2822
    :goto_b
    const/4 v3, 0x4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2830
    return-object v1

    .line 2817
    :cond_14
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2818
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2819
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2820
    return-object v3

    .line 2824
    .end local v13    # "offset":I
    .restart local v11    # "offset":I
    :cond_15
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2825
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2826
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2827
    return-object v3

    .line 2762
    .end local v1    # "dateVal":Ljava/util/Date;
    .end local v11    # "offset":I
    .restart local v7    # "offset":I
    :cond_16
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2763
    return-object v3
.end method

.method public final scanFieldDouble(J)D
    .locals 17
    .param p1, "fieldHashCode"    # J

    .line 3516
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3518
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    .line 3519
    .local v2, "offset":I
    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    .line 3520
    return-wide v3

    .line 3523
    :cond_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "offset":I
    .local v6, "offset":I
    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3525
    .local v2, "chLocal":C
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v7, v5, v6

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 3526
    .local v7, "start":I
    const/16 v9, 0x2d

    if-ne v2, v9, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 3527
    .local v10, "negative":Z
    :goto_0
    if-eqz v10, :cond_2

    .line 3528
    add-int/lit8 v11, v6, 0x1

    .end local v6    # "offset":I
    .local v11, "offset":I
    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    move v6, v11

    .line 3532
    .end local v11    # "offset":I
    .restart local v6    # "offset":I
    :cond_2
    const/4 v5, -0x1

    const/16 v11, 0x30

    if-lt v2, v11, :cond_15

    const/16 v12, 0x39

    if-gt v2, v12, :cond_15

    .line 3533
    add-int/lit8 v13, v2, -0x30

    .line 3535
    .local v13, "intVal":I
    :goto_1
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v15, v6, 0x1

    .end local v6    # "offset":I
    .local v15, "offset":I
    add-int/2addr v14, v6

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3536
    if-lt v2, v11, :cond_3

    if-gt v2, v12, :cond_3

    .line 3537
    mul-int/lit8 v6, v13, 0xa

    add-int/lit8 v14, v2, -0x30

    add-int v13, v6, v14

    .line 3538
    move v6, v15

    goto :goto_1

    .line 3544
    :cond_3
    const/4 v6, 0x1

    .line 3545
    .local v6, "power":I
    const/16 v14, 0x2e

    if-ne v2, v14, :cond_4

    const/4 v14, 0x1

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    .line 3546
    .local v14, "small":Z
    :goto_2
    if-eqz v14, :cond_7

    .line 3547
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .local v16, "offset":I
    add-int/2addr v1, v15

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 3548
    .end local v2    # "chLocal":C
    .local v1, "chLocal":C
    if-lt v1, v11, :cond_6

    if-gt v1, v12, :cond_6

    .line 3549
    mul-int/lit8 v2, v13, 0xa

    add-int/lit8 v15, v1, -0x30

    add-int/2addr v2, v15

    .line 3550
    .end local v13    # "intVal":I
    .local v2, "intVal":I
    mul-int/lit8 v6, v6, 0xa

    move v13, v2

    .line 3552
    .end local v2    # "intVal":I
    .restart local v13    # "intVal":I
    :goto_3
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v2, v2, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 3553
    if-lt v1, v11, :cond_5

    if-gt v1, v12, :cond_5

    .line 3554
    mul-int/lit8 v2, v13, 0xa

    add-int/lit8 v16, v1, -0x30

    add-int v13, v2, v16

    .line 3555
    mul-int/lit8 v6, v6, 0xa

    .line 3556
    move/from16 v16, v15

    goto :goto_3

    .line 3567
    :cond_5
    move v2, v1

    goto :goto_4

    .line 3562
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_6
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3563
    return-wide v3

    .line 3567
    .end local v1    # "chLocal":C
    .end local v16    # "offset":I
    .local v2, "chLocal":C
    .restart local v15    # "offset":I
    :cond_7
    :goto_4
    const/16 v1, 0x65

    if-eq v2, v1, :cond_9

    const/16 v1, 0x45

    if-ne v2, v1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v1, 0x1

    .line 3568
    .local v1, "exp":Z
    :goto_6
    if-eqz v1, :cond_c

    .line 3569
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v15, 0x1

    .end local v15    # "offset":I
    .local v4, "offset":I
    add-int/2addr v3, v15

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3570
    const/16 v3, 0x2b

    if-eq v2, v3, :cond_b

    if-ne v2, v9, :cond_a

    goto :goto_7

    :cond_a
    move v15, v4

    goto :goto_8

    .line 3571
    :cond_b
    :goto_7
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v4, 0x1

    .end local v4    # "offset":I
    .local v9, "offset":I
    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    move v15, v9

    .line 3574
    .end local v9    # "offset":I
    .restart local v15    # "offset":I
    :goto_8
    if-lt v2, v11, :cond_c

    if-gt v2, v12, :cond_c

    .line 3575
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v15, 0x1

    .end local v15    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v3, v15

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    move v15, v4

    goto :goto_8

    .line 3582
    .end local v4    # "offset":I
    .restart local v15    # "offset":I
    :cond_c
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v15

    sub-int/2addr v3, v7

    sub-int/2addr v3, v8

    .line 3583
    .local v3, "count":I
    if-nez v1, :cond_d

    const/16 v4, 0xa

    if-ge v3, v4, :cond_d

    .line 3584
    int-to-double v8, v13

    int-to-double v11, v6

    div-double/2addr v8, v11

    .line 3585
    .local v8, "value":D
    if-eqz v10, :cond_e

    .line 3586
    neg-double v8, v8

    goto :goto_9

    .line 3589
    .end local v8    # "value":D
    :cond_d
    invoke-direct {v0, v7, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v4

    .line 3590
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 3592
    .end local v1    # "exp":Z
    .end local v3    # "count":I
    .end local v4    # "text":Ljava/lang/String;
    .end local v6    # "power":I
    .end local v13    # "intVal":I
    .end local v14    # "small":Z
    .restart local v8    # "value":D
    :cond_e
    :goto_9
    nop

    .line 3597
    const/16 v1, 0x10

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_f

    .line 3598
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v15, -0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3599
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3600
    const/4 v3, 0x3

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3601
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3602
    return-wide v8

    .line 3605
    :cond_f
    const/16 v4, 0x7d

    if-ne v2, v4, :cond_14

    .line 3606
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v15, 0x1

    .end local v15    # "offset":I
    .restart local v11    # "offset":I
    add-int/2addr v6, v15

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3607
    if-ne v2, v3, :cond_10

    .line 3608
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3609
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v11, -0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3610
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_a

    .line 3611
    :cond_10
    const/16 v1, 0x5d

    if-ne v2, v1, :cond_11

    .line 3612
    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3613
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v11, -0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3614
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_a

    .line 3615
    :cond_11
    if-ne v2, v4, :cond_12

    .line 3616
    const/16 v1, 0xd

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3617
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v11, -0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3618
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_a

    .line 3619
    :cond_12
    const/16 v1, 0x1a

    if-ne v2, v1, :cond_13

    .line 3620
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v11, -0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3621
    const/16 v3, 0x14

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3622
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 3627
    :goto_a
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3633
    return-wide v8

    .line 3624
    :cond_13
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3625
    const-wide/16 v3, 0x0

    return-wide v3

    .line 3629
    .end local v11    # "offset":I
    .restart local v15    # "offset":I
    :cond_14
    const-wide/16 v3, 0x0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3630
    return-wide v3

    .line 3593
    .end local v8    # "value":D
    .end local v15    # "offset":I
    .local v6, "offset":I
    :cond_15
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3594
    return-wide v3
.end method

.method public final scanFieldDoubleArray(J)[D
    .locals 22
    .param p1, "fieldHashCode"    # J

    .line 3637
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3639
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    .line 3640
    .local v2, "offset":I
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3641
    return-object v3

    .line 3643
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .local v5, "offset":I
    add-int/2addr v4, v2

    .line 3644
    .local v4, "charIndex":I
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3646
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    nop

    .line 3647
    .local v2, "chLocal":C
    const/16 v7, 0x5b

    const/4 v8, -0x1

    if-eq v2, v7, :cond_2

    .line 3648
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3649
    return-object v3

    .line 3652
    :cond_2
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "offset":I
    .local v9, "offset":I
    add-int/2addr v7, v5

    .line 3653
    .end local v4    # "charIndex":I
    .local v7, "charIndex":I
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v4, :cond_3

    const/16 v4, 0x1a

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3655
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    move v2, v4

    .line 3657
    const/16 v4, 0x10

    new-array v5, v4, [D

    .line 3658
    .local v5, "array":[D
    const/4 v10, 0x0

    .line 3661
    .local v10, "arrayIndex":I
    :goto_2
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v12, v11, v9

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    .line 3663
    .local v12, "start":I
    const/16 v14, 0x2d

    if-ne v2, v14, :cond_4

    const/4 v15, 0x1

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    .line 3664
    .local v15, "negative":Z
    :goto_3
    if-eqz v15, :cond_6

    .line 3666
    add-int/lit8 v16, v9, 0x1

    .end local v9    # "offset":I
    .local v16, "offset":I
    add-int v7, v11, v9

    .line 3667
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v9, :cond_5

    const/16 v9, 0x1a

    goto :goto_4

    :cond_5
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3669
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_4
    move v2, v9

    move/from16 v9, v16

    .line 3672
    .end local v16    # "offset":I
    .restart local v9    # "offset":I
    :cond_6
    const/16 v11, 0x30

    if-lt v2, v11, :cond_26

    const/16 v6, 0x39

    if-gt v2, v6, :cond_26

    .line 3673
    add-int/lit8 v17, v2, -0x30

    .line 3676
    .local v17, "intVal":I
    :goto_5
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v18, v9, 0x1

    .end local v9    # "offset":I
    .local v18, "offset":I
    add-int v7, v4, v9

    .line 3677
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v4, :cond_7

    const/16 v4, 0x1a

    goto :goto_6

    :cond_7
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3679
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_6
    move v2, v4

    .line 3680
    if-lt v2, v11, :cond_8

    if-gt v2, v6, :cond_8

    .line 3681
    mul-int/lit8 v4, v17, 0xa

    add-int/lit8 v9, v2, -0x30

    add-int v17, v4, v9

    .line 3682
    move/from16 v9, v18

    const/16 v4, 0x10

    goto :goto_5

    .line 3688
    :cond_8
    const/4 v4, 0x1

    .line 3689
    .local v4, "power":I
    const/16 v9, 0x2e

    if-ne v2, v9, :cond_9

    const/4 v9, 0x1

    goto :goto_7

    :cond_9
    const/4 v9, 0x0

    .line 3690
    .local v9, "small":Z
    :goto_7
    if-eqz v9, :cond_e

    .line 3692
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "offset":I
    .local v19, "offset":I
    add-int v1, v1, v18

    .line 3693
    .end local v7    # "charIndex":I
    .local v1, "charIndex":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v7, :cond_a

    const/16 v7, 0x1a

    goto :goto_8

    :cond_a
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3695
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_8
    move v2, v7

    .line 3696
    mul-int/lit8 v4, v4, 0xa

    .line 3697
    if-lt v2, v11, :cond_d

    if-gt v2, v6, :cond_d

    .line 3698
    mul-int/lit8 v7, v17, 0xa

    add-int/lit8 v18, v2, -0x30

    add-int v7, v7, v18

    move/from16 v17, v7

    .line 3701
    :goto_9
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    add-int v1, v7, v19

    .line 3702
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v7, :cond_b

    const/16 v7, 0x1a

    goto :goto_a

    :cond_b
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3704
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_a
    move v2, v7

    .line 3706
    if-lt v2, v11, :cond_c

    if-gt v2, v6, :cond_c

    .line 3707
    mul-int/lit8 v7, v17, 0xa

    add-int/lit8 v19, v2, -0x30

    add-int v17, v7, v19

    .line 3708
    mul-int/lit8 v4, v4, 0xa

    .line 3709
    move/from16 v19, v18

    goto :goto_9

    .line 3720
    :cond_c
    move v7, v1

    move/from16 v1, v17

    goto :goto_b

    .line 3715
    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    :cond_d
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3716
    return-object v3

    .line 3690
    .end local v1    # "charIndex":I
    .end local v19    # "offset":I
    .restart local v7    # "charIndex":I
    .restart local v18    # "offset":I
    :cond_e
    move/from16 v1, v17

    .line 3720
    .end local v17    # "intVal":I
    .local v1, "intVal":I
    :goto_b
    const/16 v3, 0x65

    if-eq v2, v3, :cond_10

    const/16 v3, 0x45

    if-ne v2, v3, :cond_f

    goto :goto_c

    :cond_f
    const/4 v3, 0x0

    goto :goto_d

    :cond_10
    :goto_c
    const/4 v3, 0x1

    .line 3721
    .local v3, "exp":Z
    :goto_d
    if-eqz v3, :cond_16

    .line 3723
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v20, v18, 0x1

    .end local v18    # "offset":I
    .local v20, "offset":I
    add-int v8, v8, v18

    .line 3724
    .end local v7    # "charIndex":I
    .local v8, "charIndex":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v7, :cond_11

    const/16 v7, 0x1a

    goto :goto_e

    :cond_11
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3726
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_e
    move v2, v7

    .line 3727
    const/16 v7, 0x2b

    if-eq v2, v7, :cond_13

    if-ne v2, v14, :cond_12

    goto :goto_f

    :cond_12
    move v7, v8

    move/from16 v18, v20

    goto :goto_11

    .line 3729
    :cond_13
    :goto_f
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v20, 0x1

    .end local v20    # "offset":I
    .local v14, "offset":I
    add-int v7, v7, v20

    .line 3730
    .end local v8    # "charIndex":I
    .restart local v7    # "charIndex":I
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_14

    const/16 v8, 0x1a

    goto :goto_10

    :cond_14
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3732
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_10
    move v2, v8

    move/from16 v18, v14

    .line 3735
    .end local v14    # "offset":I
    .restart local v18    # "offset":I
    :goto_11
    if-lt v2, v11, :cond_16

    if-gt v2, v6, :cond_16

    .line 3737
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v18, 0x1

    .end local v18    # "offset":I
    .restart local v14    # "offset":I
    add-int v7, v8, v18

    .line 3738
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_15

    const/16 v8, 0x1a

    goto :goto_12

    :cond_15
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3740
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_12
    move v2, v8

    move/from16 v18, v14

    goto :goto_11

    .line 3747
    .end local v14    # "offset":I
    .restart local v18    # "offset":I
    :cond_16
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v6, v6, v18

    sub-int/2addr v6, v12

    sub-int/2addr v6, v13

    .line 3750
    .local v6, "count":I
    if-nez v3, :cond_17

    const/16 v8, 0xa

    if-ge v6, v8, :cond_17

    .line 3751
    int-to-double v13, v1

    move v11, v7

    .end local v7    # "charIndex":I
    .local v11, "charIndex":I
    int-to-double v7, v4

    div-double/2addr v13, v7

    .line 3752
    .local v13, "value":D
    if-eqz v15, :cond_18

    .line 3753
    neg-double v13, v13

    goto :goto_13

    .line 3750
    .end local v11    # "charIndex":I
    .end local v13    # "value":D
    .restart local v7    # "charIndex":I
    :cond_17
    move v11, v7

    .line 3756
    .end local v7    # "charIndex":I
    .restart local v11    # "charIndex":I
    invoke-direct {v0, v12, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v7

    .line 3757
    .local v7, "text":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 3760
    .end local v7    # "text":Ljava/lang/String;
    .restart local v13    # "value":D
    :cond_18
    :goto_13
    array-length v7, v5

    const/4 v8, 0x3

    if-lt v10, v7, :cond_19

    .line 3761
    array-length v7, v5

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x2

    new-array v7, v7, [D

    .line 3762
    .local v7, "tmp":[D
    const/4 v8, 0x0

    invoke-static {v5, v8, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3763
    move-object v5, v7

    .line 3765
    .end local v7    # "tmp":[D
    :cond_19
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "arrayIndex":I
    .local v7, "arrayIndex":I
    aput-wide v13, v5, v10

    .line 3767
    const/16 v8, 0x2c

    if-ne v2, v8, :cond_1b

    .line 3769
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v18, 0x1

    .end local v18    # "offset":I
    .local v10, "offset":I
    add-int v8, v8, v18

    .line 3770
    .end local v11    # "charIndex":I
    .restart local v8    # "charIndex":I
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v11, :cond_1a

    const/16 v11, 0x1a

    goto :goto_14

    :cond_1a
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3772
    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_14
    move v2, v11

    move v11, v8

    move v9, v10

    const/16 v8, 0x10

    const/16 v10, 0x1a

    const/16 v16, 0x0

    goto/16 :goto_18

    .line 3773
    .end local v8    # "charIndex":I
    .end local v10    # "offset":I
    .restart local v11    # "charIndex":I
    .restart local v18    # "offset":I
    :cond_1b
    const/16 v10, 0x5d

    if-ne v2, v10, :cond_25

    .line 3775
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v21, v18, 0x1

    .end local v18    # "offset":I
    .local v21, "offset":I
    add-int v10, v10, v18

    .line 3776
    .end local v11    # "charIndex":I
    .local v10, "charIndex":I
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v11, :cond_1c

    const/16 v11, 0x1a

    goto :goto_15

    :cond_1c
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3778
    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_15
    move v2, v11

    .line 3779
    nop

    .line 3788
    .end local v1    # "intVal":I
    .end local v3    # "exp":Z
    .end local v4    # "power":I
    .end local v6    # "count":I
    .end local v9    # "small":Z
    .end local v12    # "start":I
    .end local v13    # "value":D
    .end local v15    # "negative":Z
    array-length v1, v5

    if-eq v7, v1, :cond_1d

    .line 3789
    new-array v1, v7, [D

    .line 3790
    .local v1, "tmp":[D
    const/4 v3, 0x0

    invoke-static {v5, v3, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3791
    move-object v5, v1

    .line 3794
    .end local v1    # "tmp":[D
    :cond_1d
    if-ne v2, v8, :cond_1e

    .line 3795
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v21, -0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3796
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3797
    const/4 v1, 0x3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3798
    const/16 v1, 0x10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3799
    return-object v5

    .line 3802
    :cond_1e
    const/16 v1, 0x7d

    if-ne v2, v1, :cond_24

    .line 3804
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v21, 0x1

    .end local v21    # "offset":I
    .local v4, "offset":I
    add-int v3, v3, v21

    .line 3805
    .end local v10    # "charIndex":I
    .local v3, "charIndex":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v6, :cond_1f

    const/16 v6, 0x1a

    goto :goto_16

    :cond_1f
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3807
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_16
    move v2, v6

    .line 3808
    if-ne v2, v8, :cond_20

    .line 3809
    const/16 v8, 0x10

    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3810
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v4, -0x1

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3811
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_17

    .line 3812
    :cond_20
    const/16 v6, 0x5d

    if-ne v2, v6, :cond_21

    .line 3813
    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3814
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v4, -0x1

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3815
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_17

    .line 3816
    :cond_21
    if-ne v2, v1, :cond_22

    .line 3817
    const/16 v1, 0xd

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3818
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v4, -0x1

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3819
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_17

    .line 3820
    :cond_22
    const/16 v10, 0x1a

    if-ne v2, v10, :cond_23

    .line 3821
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v4, -0x1

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3822
    const/16 v1, 0x14

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3823
    iput-char v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 3828
    :goto_17
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3834
    return-object v5

    .line 3825
    :cond_23
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3826
    const/4 v6, 0x0

    return-object v6

    .line 3830
    .end local v3    # "charIndex":I
    .end local v4    # "offset":I
    .restart local v10    # "charIndex":I
    .restart local v21    # "offset":I
    :cond_24
    const/4 v1, -0x1

    const/4 v6, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3831
    return-object v6

    .line 3773
    .end local v10    # "charIndex":I
    .end local v21    # "offset":I
    .local v1, "intVal":I
    .local v3, "exp":Z
    .local v4, "power":I
    .restart local v6    # "count":I
    .restart local v9    # "small":Z
    .restart local v11    # "charIndex":I
    .restart local v12    # "start":I
    .restart local v13    # "value":D
    .restart local v15    # "negative":Z
    .restart local v18    # "offset":I
    :cond_25
    const/16 v8, 0x10

    const/16 v10, 0x1a

    const/16 v16, 0x0

    move/from16 v9, v18

    .line 3781
    .end local v1    # "intVal":I
    .end local v3    # "exp":Z
    .end local v4    # "power":I
    .end local v6    # "count":I
    .end local v13    # "value":D
    .end local v18    # "offset":I
    .local v9, "offset":I
    :goto_18
    nop

    .line 3785
    .end local v12    # "start":I
    .end local v15    # "negative":Z
    move v10, v7

    move v7, v11

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v8, -0x1

    goto/16 :goto_2

    .line 3782
    .end local v11    # "charIndex":I
    .local v7, "charIndex":I
    .local v10, "arrayIndex":I
    .restart local v12    # "start":I
    .restart local v15    # "negative":Z
    :cond_26
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3783
    const/4 v1, 0x0

    return-object v1
.end method

.method public final scanFieldDoubleArray2(J)[[D
    .locals 26
    .param p1, "fieldHashCode"    # J

    .line 3838
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3840
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    .line 3841
    .local v2, "offset":I
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3842
    check-cast v3, [[D

    return-object v3

    .line 3844
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .local v5, "offset":I
    add-int/2addr v4, v2

    .line 3845
    .local v4, "charIndex":I
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3847
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    nop

    .line 3849
    .local v2, "chLocal":C
    const/16 v7, 0x5b

    const/4 v8, -0x1

    if-eq v2, v7, :cond_2

    .line 3850
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3851
    check-cast v3, [[D

    return-object v3

    .line 3854
    :cond_2
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v5, 0x1

    .end local v5    # "offset":I
    .local v10, "offset":I
    add-int/2addr v9, v5

    .line 3855
    .end local v4    # "charIndex":I
    .local v9, "charIndex":I
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v9, v4, :cond_3

    const/16 v4, 0x1a

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3857
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    move v2, v4

    .line 3859
    const/16 v4, 0x10

    new-array v5, v4, [[D

    .line 3860
    .local v5, "arrayarray":[[D
    const/4 v11, 0x0

    .line 3863
    .local v11, "arrayarrayIndex":I
    :goto_2
    if-ne v2, v7, :cond_2c

    .line 3865
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v10, 0x1

    .end local v10    # "offset":I
    .local v13, "offset":I
    add-int/2addr v12, v10

    .line 3866
    .end local v9    # "charIndex":I
    .local v12, "charIndex":I
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v12, v9, :cond_4

    const/16 v9, 0x1a

    goto :goto_3

    :cond_4
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3868
    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_3
    move v2, v9

    .line 3870
    new-array v9, v4, [D

    .line 3871
    .local v9, "array":[D
    const/4 v10, 0x0

    .line 3874
    .local v10, "arrayIndex":I
    :goto_4
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v15, v14, v13

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    .line 3875
    .local v15, "start":I
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_5

    const/16 v17, 0x1

    goto :goto_5

    :cond_5
    const/16 v17, 0x0

    .line 3876
    .local v17, "negative":Z
    :goto_5
    if-eqz v17, :cond_7

    .line 3878
    add-int/lit8 v18, v13, 0x1

    .end local v13    # "offset":I
    .local v18, "offset":I
    add-int v12, v14, v13

    .line 3879
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v12, v13, :cond_6

    const/16 v13, 0x1a

    goto :goto_6

    :cond_6
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3881
    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    :goto_6
    move v2, v13

    move/from16 v13, v18

    .line 3884
    .end local v18    # "offset":I
    .restart local v13    # "offset":I
    :cond_7
    const/16 v14, 0x30

    if-lt v2, v14, :cond_2b

    const/16 v6, 0x39

    if-gt v2, v6, :cond_2b

    .line 3885
    add-int/lit8 v19, v2, -0x30

    .line 3888
    .local v19, "intVal":I
    :goto_7
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v21, v13, 0x1

    .end local v13    # "offset":I
    .local v21, "offset":I
    add-int v12, v4, v13

    .line 3889
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v12, v4, :cond_8

    const/16 v4, 0x1a

    goto :goto_8

    :cond_8
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3891
    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_8
    move v2, v4

    .line 3893
    if-lt v2, v14, :cond_9

    if-gt v2, v6, :cond_9

    .line 3894
    mul-int/lit8 v4, v19, 0xa

    add-int/lit8 v13, v2, -0x30

    add-int v19, v4, v13

    .line 3895
    move/from16 v13, v21

    const/16 v4, 0x10

    goto :goto_7

    .line 3901
    :cond_9
    const/4 v4, 0x1

    .line 3902
    .local v4, "power":I
    const/16 v13, 0x2e

    if-ne v2, v13, :cond_e

    .line 3904
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v22, v21, 0x1

    .end local v21    # "offset":I
    .local v22, "offset":I
    add-int v13, v13, v21

    .line 3905
    .end local v12    # "charIndex":I
    .local v13, "charIndex":I
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v13, v12, :cond_a

    const/16 v12, 0x1a

    goto :goto_9

    :cond_a
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3907
    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    :goto_9
    move v2, v12

    .line 3909
    if-lt v2, v14, :cond_d

    if-gt v2, v6, :cond_d

    .line 3910
    mul-int/lit8 v12, v19, 0xa

    add-int/lit8 v21, v2, -0x30

    add-int v12, v12, v21

    .line 3911
    .end local v19    # "intVal":I
    .local v12, "intVal":I
    mul-int/lit8 v4, v4, 0xa

    move/from16 v19, v12

    .line 3914
    .end local v12    # "intVal":I
    .restart local v19    # "intVal":I
    :goto_a
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "offset":I
    .restart local v21    # "offset":I
    add-int v13, v12, v22

    .line 3915
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v13, v12, :cond_b

    const/16 v12, 0x1a

    goto :goto_b

    :cond_b
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3917
    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    :goto_b
    move v2, v12

    .line 3919
    if-lt v2, v14, :cond_c

    if-gt v2, v6, :cond_c

    .line 3920
    mul-int/lit8 v12, v19, 0xa

    add-int/lit8 v22, v2, -0x30

    add-int v19, v12, v22

    .line 3921
    mul-int/lit8 v4, v4, 0xa

    .line 3922
    move/from16 v22, v21

    goto :goto_a

    .line 3933
    :cond_c
    move v12, v13

    move/from16 v13, v19

    goto :goto_c

    .line 3928
    .end local v21    # "offset":I
    .restart local v22    # "offset":I
    :cond_d
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3929
    check-cast v3, [[D

    return-object v3

    .line 3902
    .end local v13    # "charIndex":I
    .end local v22    # "offset":I
    .local v12, "charIndex":I
    .restart local v21    # "offset":I
    :cond_e
    move/from16 v13, v19

    .line 3933
    .end local v19    # "intVal":I
    .local v13, "intVal":I
    :goto_c
    const/16 v3, 0x65

    if-eq v2, v3, :cond_10

    const/16 v3, 0x45

    if-ne v2, v3, :cond_f

    goto :goto_d

    :cond_f
    const/4 v3, 0x0

    goto :goto_e

    :cond_10
    :goto_d
    const/4 v3, 0x1

    .line 3934
    .local v3, "exp":Z
    :goto_e
    if-eqz v3, :cond_16

    .line 3936
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v23, v21, 0x1

    .end local v21    # "offset":I
    .local v23, "offset":I
    add-int v8, v8, v21

    .line 3937
    .end local v12    # "charIndex":I
    .local v8, "charIndex":I
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v12, :cond_11

    const/16 v12, 0x1a

    goto :goto_f

    :cond_11
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3939
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    :goto_f
    move v2, v12

    .line 3940
    const/16 v12, 0x2b

    if-eq v2, v12, :cond_13

    if-ne v2, v7, :cond_12

    goto :goto_10

    :cond_12
    move v12, v8

    move/from16 v21, v23

    goto :goto_12

    .line 3942
    :cond_13
    :goto_10
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v12, v23, 0x1

    .end local v23    # "offset":I
    .local v12, "offset":I
    add-int v7, v7, v23

    .line 3943
    .end local v8    # "charIndex":I
    .local v7, "charIndex":I
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_14

    const/16 v8, 0x1a

    goto :goto_11

    :cond_14
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3945
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_11
    move v2, v8

    move/from16 v21, v12

    move v12, v7

    .line 3948
    .end local v7    # "charIndex":I
    .local v12, "charIndex":I
    .restart local v21    # "offset":I
    :goto_12
    if-lt v2, v14, :cond_16

    if-gt v2, v6, :cond_16

    .line 3950
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v21, 0x1

    .end local v21    # "offset":I
    .local v8, "offset":I
    add-int v12, v7, v21

    .line 3951
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v12, v7, :cond_15

    const/16 v7, 0x1a

    goto :goto_13

    :cond_15
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3953
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_13
    move v2, v7

    move/from16 v21, v8

    goto :goto_12

    .line 3960
    .end local v8    # "offset":I
    .restart local v21    # "offset":I
    :cond_16
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v6, v6, v21

    sub-int/2addr v6, v15

    add-int/lit8 v6, v6, -0x1

    .line 3962
    .local v6, "count":I
    if-nez v3, :cond_17

    const/16 v7, 0xa

    if-ge v6, v7, :cond_17

    .line 3963
    int-to-double v7, v13

    move/from16 v16, v2

    .end local v2    # "chLocal":C
    .local v16, "chLocal":C
    int-to-double v1, v4

    div-double/2addr v7, v1

    .line 3964
    .local v7, "value":D
    if-eqz v17, :cond_18

    .line 3965
    neg-double v7, v7

    goto :goto_14

    .line 3962
    .end local v7    # "value":D
    .end local v16    # "chLocal":C
    .restart local v2    # "chLocal":C
    :cond_17
    move/from16 v16, v2

    .line 3968
    .end local v2    # "chLocal":C
    .restart local v16    # "chLocal":C
    invoke-direct {v0, v15, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3969
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 3972
    .end local v1    # "text":Ljava/lang/String;
    .restart local v7    # "value":D
    :cond_18
    :goto_14
    array-length v1, v9

    const/4 v2, 0x3

    if-lt v10, v1, :cond_19

    .line 3973
    array-length v1, v9

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [D

    .line 3974
    .local v1, "tmp":[D
    const/4 v14, 0x0

    invoke-static {v9, v14, v1, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3975
    move-object v9, v1

    .line 3977
    .end local v1    # "tmp":[D
    :cond_19
    add-int/lit8 v1, v10, 0x1

    .end local v10    # "arrayIndex":I
    .local v1, "arrayIndex":I
    aput-wide v7, v9, v10

    .line 3979
    const/16 v10, 0x2c

    move/from16 v14, v16

    .end local v16    # "chLocal":C
    .local v14, "chLocal":C
    if-ne v14, v10, :cond_1b

    .line 3981
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v21, 0x1

    .end local v21    # "offset":I
    .local v10, "offset":I
    add-int v2, v2, v21

    .line 3982
    .end local v12    # "charIndex":I
    .local v2, "charIndex":I
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v12, :cond_1a

    const/16 v12, 0x1a

    goto :goto_15

    :cond_1a
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3984
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    :goto_15
    move v13, v10

    const/16 v16, 0x10

    const/16 v18, 0x0

    const/16 v20, 0x1a

    move/from16 v25, v12

    move v12, v2

    move/from16 v2, v25

    .end local v14    # "chLocal":C
    .local v12, "chLocal":C
    goto/16 :goto_1b

    .line 3985
    .end local v2    # "charIndex":I
    .end local v10    # "offset":I
    .local v12, "charIndex":I
    .restart local v14    # "chLocal":C
    .restart local v21    # "offset":I
    :cond_1b
    const/16 v10, 0x5d

    if-ne v14, v10, :cond_2a

    .line 3987
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v24, v21, 0x1

    .end local v21    # "offset":I
    .local v24, "offset":I
    add-int v10, v10, v21

    .line 3988
    .end local v12    # "charIndex":I
    .local v10, "charIndex":I
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v12, :cond_1c

    const/16 v12, 0x1a

    goto :goto_16

    :cond_1c
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3990
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    :goto_16
    nop

    .line 3991
    .end local v14    # "chLocal":C
    .local v12, "chLocal":C
    nop

    .line 4000
    .end local v3    # "exp":Z
    .end local v4    # "power":I
    .end local v6    # "count":I
    .end local v7    # "value":D
    .end local v13    # "intVal":I
    .end local v15    # "start":I
    .end local v17    # "negative":Z
    array-length v3, v9

    if-eq v1, v3, :cond_1d

    .line 4001
    new-array v3, v1, [D

    .line 4002
    .local v3, "tmp":[D
    const/4 v4, 0x0

    invoke-static {v9, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4003
    move-object v9, v3

    .line 4006
    .end local v3    # "tmp":[D
    :cond_1d
    array-length v3, v5

    if-lt v11, v3, :cond_1e

    .line 4007
    array-length v3, v5

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [[D

    .line 4008
    .local v3, "tmp":[[D
    const/4 v4, 0x0

    invoke-static {v9, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4009
    move-object v4, v3

    move-object v5, v4

    .line 4011
    .end local v3    # "tmp":[[D
    :cond_1e
    add-int/lit8 v3, v11, 0x1

    .end local v11    # "arrayarrayIndex":I
    .local v3, "arrayarrayIndex":I
    aput-object v9, v5, v11

    .line 4013
    const/16 v4, 0x2c

    if-ne v12, v4, :cond_20

    .line 4015
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v24, 0x1

    .end local v24    # "offset":I
    .local v4, "offset":I
    add-int v2, v2, v24

    .line 4016
    .end local v10    # "charIndex":I
    .restart local v2    # "charIndex":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_1f

    const/16 v6, 0x1a

    goto :goto_17

    :cond_1f
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4018
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_17
    move v9, v2

    move v10, v4

    move v2, v6

    const/16 v6, 0x10

    const/16 v7, 0x1a

    const/4 v8, 0x0

    .end local v12    # "chLocal":C
    .local v6, "chLocal":C
    goto/16 :goto_1a

    .line 4019
    .end local v2    # "charIndex":I
    .end local v4    # "offset":I
    .end local v6    # "chLocal":C
    .restart local v10    # "charIndex":I
    .restart local v12    # "chLocal":C
    .restart local v24    # "offset":I
    :cond_20
    const/16 v4, 0x5d

    if-ne v12, v4, :cond_29

    .line 4021
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v24, 0x1

    .end local v24    # "offset":I
    .local v6, "offset":I
    add-int v4, v4, v24

    .line 4022
    .end local v10    # "charIndex":I
    .local v4, "charIndex":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v7, :cond_21

    const/16 v7, 0x1a

    goto :goto_18

    :cond_21
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4024
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_18
    nop

    .line 4025
    .end local v12    # "chLocal":C
    .local v7, "chLocal":C
    nop

    .line 4031
    .end local v1    # "arrayIndex":I
    .end local v9    # "array":[D
    array-length v1, v5

    if-eq v3, v1, :cond_22

    .line 4032
    new-array v1, v3, [[D

    .line 4033
    .local v1, "tmp":[[D
    const/4 v8, 0x0

    invoke-static {v5, v8, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4034
    move-object v5, v1

    .line 4037
    .end local v1    # "tmp":[[D
    :cond_22
    const/16 v1, 0x2c

    if-ne v7, v1, :cond_23

    .line 4038
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v6, -0x1

    add-int/2addr v1, v8

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4039
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 4040
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4041
    const/16 v1, 0x10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4042
    return-object v5

    .line 4045
    :cond_23
    const/16 v1, 0x7d

    if-ne v7, v1, :cond_28

    .line 4046
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 4047
    .end local v7    # "chLocal":C
    .local v2, "chLocal":C
    const/16 v6, 0x2c

    if-ne v2, v6, :cond_24

    .line 4048
    const/16 v6, 0x10

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4049
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v8, -0x1

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4050
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    .line 4051
    :cond_24
    const/16 v6, 0x5d

    if-ne v2, v6, :cond_25

    .line 4052
    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4053
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v8, -0x1

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4054
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    .line 4055
    :cond_25
    if-ne v2, v1, :cond_26

    .line 4056
    const/16 v1, 0xd

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4057
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v8, -0x1

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4058
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    .line 4059
    :cond_26
    const/16 v7, 0x1a

    if-ne v2, v7, :cond_27

    .line 4060
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v8, -0x1

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4061
    const/16 v1, 0x14

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4062
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 4067
    :goto_19
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4073
    return-object v5

    .line 4064
    :cond_27
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4065
    const/4 v9, 0x0

    move-object v1, v9

    check-cast v1, [[D

    return-object v1

    .line 4069
    .end local v2    # "chLocal":C
    .end local v8    # "offset":I
    .restart local v6    # "offset":I
    .restart local v7    # "chLocal":C
    :cond_28
    const/4 v1, -0x1

    const/4 v9, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4070
    move-object v1, v9

    check-cast v1, [[D

    return-object v1

    .line 4019
    .end local v4    # "charIndex":I
    .end local v6    # "offset":I
    .end local v7    # "chLocal":C
    .local v1, "arrayIndex":I
    .restart local v9    # "array":[D
    .restart local v10    # "charIndex":I
    .restart local v12    # "chLocal":C
    .restart local v24    # "offset":I
    :cond_29
    const/16 v6, 0x10

    const/16 v7, 0x1a

    const/4 v8, 0x0

    move v9, v10

    move v2, v12

    move/from16 v10, v24

    .line 4027
    .end local v1    # "arrayIndex":I
    .end local v12    # "chLocal":C
    .end local v24    # "offset":I
    .restart local v2    # "chLocal":C
    .local v9, "charIndex":I
    .local v10, "offset":I
    :goto_1a
    move v11, v3

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v7, 0x5b

    const/4 v8, -0x1

    goto/16 :goto_2

    .line 3985
    .end local v2    # "chLocal":C
    .end local v10    # "offset":I
    .restart local v1    # "arrayIndex":I
    .local v3, "exp":Z
    .local v4, "power":I
    .local v6, "count":I
    .local v7, "value":D
    .local v9, "array":[D
    .restart local v11    # "arrayarrayIndex":I
    .local v12, "charIndex":I
    .restart local v13    # "intVal":I
    .restart local v14    # "chLocal":C
    .restart local v15    # "start":I
    .restart local v17    # "negative":Z
    .restart local v21    # "offset":I
    :cond_2a
    const/16 v16, 0x10

    const/16 v18, 0x0

    const/16 v20, 0x1a

    move v2, v14

    move/from16 v13, v21

    .line 3993
    .end local v3    # "exp":Z
    .end local v4    # "power":I
    .end local v6    # "count":I
    .end local v7    # "value":D
    .end local v14    # "chLocal":C
    .end local v21    # "offset":I
    .restart local v2    # "chLocal":C
    .local v13, "offset":I
    :goto_1b
    nop

    .line 3997
    .end local v15    # "start":I
    .end local v17    # "negative":Z
    move v10, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v7, 0x5b

    const/4 v8, -0x1

    goto/16 :goto_4

    .line 3994
    .end local v1    # "arrayIndex":I
    .local v10, "arrayIndex":I
    .restart local v15    # "start":I
    .restart local v17    # "negative":Z
    :cond_2b
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3995
    const/4 v3, 0x0

    check-cast v3, [[D

    return-object v3

    .line 3863
    .end local v12    # "charIndex":I
    .end local v13    # "offset":I
    .end local v15    # "start":I
    .end local v17    # "negative":Z
    .local v9, "charIndex":I
    .local v10, "offset":I
    :cond_2c
    const/4 v1, -0x1

    const/16 v16, 0x10

    const/16 v18, 0x0

    const/16 v20, 0x1a

    const/4 v1, 0x0

    const/16 v4, 0x10

    const/16 v7, 0x5b

    const/4 v8, -0x1

    goto/16 :goto_2
.end method

.method public final scanFieldFloat(J)F
    .locals 17
    .param p1, "fieldHashCode"    # J

    .line 2957
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2959
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    .line 2960
    .local v2, "offset":I
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2961
    return v3

    .line 2964
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .local v5, "offset":I
    add-int/2addr v4, v2

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 2966
    .local v2, "chLocal":C
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v6, v4, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 2967
    .local v6, "start":I
    const/16 v8, 0x2d

    if-ne v2, v8, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 2968
    .local v9, "negative":Z
    :goto_0
    if-eqz v9, :cond_2

    .line 2969
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "offset":I
    .local v10, "offset":I
    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    move v5, v10

    .line 2973
    .end local v10    # "offset":I
    .restart local v5    # "offset":I
    :cond_2
    const/4 v4, -0x1

    const/16 v10, 0x30

    if-lt v2, v10, :cond_15

    const/16 v11, 0x39

    if-gt v2, v11, :cond_15

    .line 2974
    add-int/lit8 v12, v2, -0x30

    .line 2976
    .local v12, "intVal":I
    :goto_1
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v5, 0x1

    .end local v5    # "offset":I
    .local v14, "offset":I
    add-int/2addr v13, v5

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 2977
    if-lt v2, v10, :cond_3

    if-gt v2, v11, :cond_3

    .line 2978
    mul-int/lit8 v5, v12, 0xa

    add-int/lit8 v13, v2, -0x30

    add-int v12, v5, v13

    .line 2979
    move v5, v14

    goto :goto_1

    .line 2985
    :cond_3
    const/4 v5, 0x1

    .line 2986
    .local v5, "power":I
    const/16 v13, 0x2e

    if-ne v2, v13, :cond_4

    const/4 v13, 0x1

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    .line 2987
    .local v13, "small":Z
    :goto_2
    if-eqz v13, :cond_7

    .line 2988
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v14, 0x1

    .end local v14    # "offset":I
    .local v16, "offset":I
    add-int/2addr v15, v14

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v14

    move v2, v14

    if-lt v14, v10, :cond_6

    if-gt v2, v11, :cond_6

    .line 2989
    mul-int/lit8 v14, v12, 0xa

    add-int/lit8 v15, v2, -0x30

    add-int/2addr v14, v15

    .line 2990
    .end local v12    # "intVal":I
    .local v14, "intVal":I
    const/16 v5, 0xa

    move v12, v14

    .line 2991
    .end local v14    # "intVal":I
    .restart local v12    # "intVal":I
    :goto_3
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .local v15, "offset":I
    add-int v14, v14, v16

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 2992
    if-lt v2, v10, :cond_5

    if-gt v2, v11, :cond_5

    .line 2993
    mul-int/lit8 v14, v12, 0xa

    add-int/lit8 v16, v2, -0x30

    add-int v12, v14, v16

    .line 2994
    mul-int/lit8 v5, v5, 0xa

    .line 2995
    move/from16 v16, v15

    goto :goto_3

    .line 3006
    :cond_5
    move v14, v15

    goto :goto_4

    .line 3001
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_6
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3002
    return v3

    .line 3006
    .end local v16    # "offset":I
    .local v14, "offset":I
    :cond_7
    :goto_4
    const/16 v15, 0x65

    if-eq v2, v15, :cond_8

    const/16 v15, 0x45

    if-ne v2, v15, :cond_9

    :cond_8
    const/4 v1, 0x1

    .line 3007
    .local v1, "exp":Z
    :cond_9
    if-eqz v1, :cond_c

    .line 3008
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v14, 0x1

    .end local v14    # "offset":I
    .restart local v16    # "offset":I
    add-int/2addr v15, v14

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3009
    const/16 v14, 0x2b

    if-eq v2, v14, :cond_b

    if-ne v2, v8, :cond_a

    goto :goto_5

    :cond_a
    move/from16 v14, v16

    goto :goto_6

    .line 3010
    :cond_b
    :goto_5
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v16, 0x1

    .end local v16    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v8, v16

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3013
    :goto_6
    if-lt v2, v10, :cond_c

    if-gt v2, v11, :cond_c

    .line 3014
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    add-int/2addr v8, v14

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    move v14, v15

    goto :goto_6

    .line 3021
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    :cond_c
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v14

    sub-int/2addr v8, v6

    sub-int/2addr v8, v7

    .line 3022
    .local v8, "count":I
    if-nez v1, :cond_d

    const/16 v7, 0xa

    if-ge v8, v7, :cond_d

    .line 3023
    int-to-float v7, v12

    int-to-float v10, v5

    div-float/2addr v7, v10

    .line 3024
    .local v7, "value":F
    if-eqz v9, :cond_e

    .line 3025
    neg-float v7, v7

    goto :goto_7

    .line 3028
    .end local v7    # "value":F
    :cond_d
    invoke-direct {v0, v6, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v7

    .line 3029
    .local v7, "text":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    move v7, v10

    .line 3031
    .end local v1    # "exp":Z
    .end local v5    # "power":I
    .end local v8    # "count":I
    .end local v12    # "intVal":I
    .end local v13    # "small":Z
    .local v7, "value":F
    :cond_e
    :goto_7
    nop

    .line 3036
    const/16 v1, 0x10

    const/16 v5, 0x2c

    if-ne v2, v5, :cond_f

    .line 3037
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v14, -0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3038
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3039
    const/4 v3, 0x3

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3040
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3041
    return v7

    .line 3044
    :cond_f
    const/16 v8, 0x7d

    if-ne v2, v8, :cond_14

    .line 3045
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v14, 0x1

    .end local v14    # "offset":I
    .local v11, "offset":I
    add-int/2addr v10, v14

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3046
    if-ne v2, v5, :cond_10

    .line 3047
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3048
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v11, -0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3049
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_8

    .line 3050
    :cond_10
    const/16 v1, 0x5d

    if-ne v2, v1, :cond_11

    .line 3051
    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3052
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v11, -0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3053
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_8

    .line 3054
    :cond_11
    if-ne v2, v8, :cond_12

    .line 3055
    const/16 v1, 0xd

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3056
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v11, -0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3057
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_8

    .line 3058
    :cond_12
    const/16 v1, 0x1a

    if-ne v2, v1, :cond_13

    .line 3059
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v11, -0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3060
    const/16 v3, 0x14

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3061
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 3066
    :goto_8
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3072
    return v7

    .line 3063
    :cond_13
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3064
    return v3

    .line 3068
    .end local v11    # "offset":I
    .restart local v14    # "offset":I
    :cond_14
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3069
    return v3

    .line 3032
    .end local v7    # "value":F
    .end local v14    # "offset":I
    .local v5, "offset":I
    :cond_15
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3033
    return v3
.end method

.method public final scanFieldFloatArray(J)[F
    .locals 22
    .param p1, "fieldHashCode"    # J

    .line 3076
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3078
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    .line 3079
    .local v2, "offset":I
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3080
    return-object v3

    .line 3082
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .local v5, "offset":I
    add-int/2addr v4, v2

    .line 3083
    .local v4, "charIndex":I
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3085
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    nop

    .line 3086
    .local v2, "chLocal":C
    const/16 v7, 0x5b

    const/4 v8, -0x1

    if-eq v2, v7, :cond_2

    .line 3087
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3088
    return-object v3

    .line 3091
    :cond_2
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "offset":I
    .local v9, "offset":I
    add-int/2addr v7, v5

    .line 3092
    .end local v4    # "charIndex":I
    .local v7, "charIndex":I
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v4, :cond_3

    const/16 v4, 0x1a

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3094
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    move v2, v4

    .line 3096
    const/16 v4, 0x10

    new-array v5, v4, [F

    .line 3097
    .local v5, "array":[F
    const/4 v10, 0x0

    .line 3100
    .local v10, "arrayIndex":I
    :goto_2
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v12, v11, v9

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    .line 3102
    .local v12, "start":I
    const/16 v14, 0x2d

    if-ne v2, v14, :cond_4

    const/4 v15, 0x1

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    .line 3103
    .local v15, "negative":Z
    :goto_3
    if-eqz v15, :cond_6

    .line 3105
    add-int/lit8 v16, v9, 0x1

    .end local v9    # "offset":I
    .local v16, "offset":I
    add-int v7, v11, v9

    .line 3106
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v9, :cond_5

    const/16 v9, 0x1a

    goto :goto_4

    :cond_5
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3108
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_4
    move v2, v9

    move/from16 v9, v16

    .line 3111
    .end local v16    # "offset":I
    .restart local v9    # "offset":I
    :cond_6
    const/16 v11, 0x30

    if-lt v2, v11, :cond_26

    const/16 v6, 0x39

    if-gt v2, v6, :cond_26

    .line 3112
    add-int/lit8 v17, v2, -0x30

    .line 3115
    .local v17, "intVal":I
    :goto_5
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v18, v9, 0x1

    .end local v9    # "offset":I
    .local v18, "offset":I
    add-int v7, v4, v9

    .line 3116
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v4, :cond_7

    const/16 v4, 0x1a

    goto :goto_6

    :cond_7
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3118
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_6
    move v2, v4

    .line 3119
    if-lt v2, v11, :cond_8

    if-gt v2, v6, :cond_8

    .line 3120
    mul-int/lit8 v4, v17, 0xa

    add-int/lit8 v9, v2, -0x30

    add-int v17, v4, v9

    .line 3121
    move/from16 v9, v18

    const/16 v4, 0x10

    goto :goto_5

    .line 3127
    :cond_8
    const/4 v4, 0x1

    .line 3128
    .local v4, "power":I
    const/16 v9, 0x2e

    if-ne v2, v9, :cond_9

    const/4 v9, 0x1

    goto :goto_7

    :cond_9
    const/4 v9, 0x0

    .line 3129
    .local v9, "small":Z
    :goto_7
    if-eqz v9, :cond_e

    .line 3131
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "offset":I
    .local v19, "offset":I
    add-int v1, v1, v18

    .line 3132
    .end local v7    # "charIndex":I
    .local v1, "charIndex":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v7, :cond_a

    const/16 v7, 0x1a

    goto :goto_8

    :cond_a
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3134
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_8
    move v2, v7

    .line 3135
    mul-int/lit8 v4, v4, 0xa

    .line 3136
    if-lt v2, v11, :cond_d

    if-gt v2, v6, :cond_d

    .line 3137
    mul-int/lit8 v7, v17, 0xa

    add-int/lit8 v18, v2, -0x30

    add-int v7, v7, v18

    move/from16 v17, v7

    .line 3140
    :goto_9
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    add-int v1, v7, v19

    .line 3141
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v7, :cond_b

    const/16 v7, 0x1a

    goto :goto_a

    :cond_b
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3143
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_a
    move v2, v7

    .line 3145
    if-lt v2, v11, :cond_c

    if-gt v2, v6, :cond_c

    .line 3146
    mul-int/lit8 v7, v17, 0xa

    add-int/lit8 v19, v2, -0x30

    add-int v17, v7, v19

    .line 3147
    mul-int/lit8 v4, v4, 0xa

    .line 3148
    move/from16 v19, v18

    goto :goto_9

    .line 3159
    :cond_c
    move v7, v1

    move/from16 v1, v17

    goto :goto_b

    .line 3154
    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    :cond_d
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3155
    return-object v3

    .line 3129
    .end local v1    # "charIndex":I
    .end local v19    # "offset":I
    .restart local v7    # "charIndex":I
    .restart local v18    # "offset":I
    :cond_e
    move/from16 v1, v17

    .line 3159
    .end local v17    # "intVal":I
    .local v1, "intVal":I
    :goto_b
    const/16 v3, 0x65

    if-eq v2, v3, :cond_10

    const/16 v3, 0x45

    if-ne v2, v3, :cond_f

    goto :goto_c

    :cond_f
    const/4 v3, 0x0

    goto :goto_d

    :cond_10
    :goto_c
    const/4 v3, 0x1

    .line 3160
    .local v3, "exp":Z
    :goto_d
    if-eqz v3, :cond_16

    .line 3162
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v20, v18, 0x1

    .end local v18    # "offset":I
    .local v20, "offset":I
    add-int v8, v8, v18

    .line 3163
    .end local v7    # "charIndex":I
    .local v8, "charIndex":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v7, :cond_11

    const/16 v7, 0x1a

    goto :goto_e

    :cond_11
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3165
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_e
    move v2, v7

    .line 3166
    const/16 v7, 0x2b

    if-eq v2, v7, :cond_13

    if-ne v2, v14, :cond_12

    goto :goto_f

    :cond_12
    move v7, v8

    move/from16 v18, v20

    goto :goto_11

    .line 3168
    :cond_13
    :goto_f
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v20, 0x1

    .end local v20    # "offset":I
    .local v14, "offset":I
    add-int v7, v7, v20

    .line 3169
    .end local v8    # "charIndex":I
    .restart local v7    # "charIndex":I
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_14

    const/16 v8, 0x1a

    goto :goto_10

    :cond_14
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3171
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_10
    move v2, v8

    move/from16 v18, v14

    .line 3174
    .end local v14    # "offset":I
    .restart local v18    # "offset":I
    :goto_11
    if-lt v2, v11, :cond_16

    if-gt v2, v6, :cond_16

    .line 3176
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v18, 0x1

    .end local v18    # "offset":I
    .restart local v14    # "offset":I
    add-int v7, v8, v18

    .line 3177
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_15

    const/16 v8, 0x1a

    goto :goto_12

    :cond_15
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3179
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_12
    move v2, v8

    move/from16 v18, v14

    goto :goto_11

    .line 3186
    .end local v14    # "offset":I
    .restart local v18    # "offset":I
    :cond_16
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v6, v6, v18

    sub-int/2addr v6, v12

    sub-int/2addr v6, v13

    .line 3189
    .local v6, "count":I
    if-nez v3, :cond_17

    const/16 v8, 0xa

    if-ge v6, v8, :cond_17

    .line 3190
    int-to-float v8, v1

    int-to-float v11, v4

    div-float/2addr v8, v11

    .line 3191
    .local v8, "value":F
    if-eqz v15, :cond_18

    .line 3192
    neg-float v8, v8

    goto :goto_13

    .line 3195
    .end local v8    # "value":F
    :cond_17
    invoke-direct {v0, v12, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v8

    .line 3196
    .local v8, "text":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    move v8, v11

    .line 3199
    .local v8, "value":F
    :cond_18
    :goto_13
    array-length v11, v5

    const/4 v13, 0x3

    if-lt v10, v11, :cond_19

    .line 3200
    array-length v11, v5

    mul-int/lit8 v11, v11, 0x3

    div-int/lit8 v11, v11, 0x2

    new-array v11, v11, [F

    .line 3201
    .local v11, "tmp":[F
    const/4 v14, 0x0

    invoke-static {v5, v14, v11, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3202
    move-object v5, v11

    .line 3204
    .end local v11    # "tmp":[F
    :cond_19
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "arrayIndex":I
    .local v11, "arrayIndex":I
    aput v8, v5, v10

    .line 3206
    const/16 v10, 0x2c

    if-ne v2, v10, :cond_1b

    .line 3208
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v18, 0x1

    .end local v18    # "offset":I
    .local v13, "offset":I
    add-int v10, v10, v18

    .line 3209
    .end local v7    # "charIndex":I
    .local v10, "charIndex":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v7, :cond_1a

    const/16 v7, 0x1a

    goto :goto_14

    :cond_1a
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3211
    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_14
    move v2, v7

    move v7, v10

    move v9, v13

    const/16 v13, 0x10

    const/16 v14, 0x1a

    const/16 v16, 0x0

    goto/16 :goto_18

    .line 3212
    .end local v10    # "charIndex":I
    .end local v13    # "offset":I
    .restart local v7    # "charIndex":I
    .restart local v18    # "offset":I
    :cond_1b
    const/16 v14, 0x5d

    if-ne v2, v14, :cond_25

    .line 3214
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v21, v18, 0x1

    .end local v18    # "offset":I
    .local v21, "offset":I
    add-int v14, v14, v18

    .line 3215
    .end local v7    # "charIndex":I
    .local v14, "charIndex":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v14, v7, :cond_1c

    const/16 v7, 0x1a

    goto :goto_15

    :cond_1c
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3217
    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_15
    move v2, v7

    .line 3218
    nop

    .line 3227
    .end local v1    # "intVal":I
    .end local v3    # "exp":Z
    .end local v4    # "power":I
    .end local v6    # "count":I
    .end local v8    # "value":F
    .end local v9    # "small":Z
    .end local v12    # "start":I
    .end local v15    # "negative":Z
    array-length v1, v5

    if-eq v11, v1, :cond_1d

    .line 3228
    new-array v1, v11, [F

    .line 3229
    .local v1, "tmp":[F
    const/4 v3, 0x0

    invoke-static {v5, v3, v1, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3230
    move-object v5, v1

    .line 3233
    .end local v1    # "tmp":[F
    :cond_1d
    if-ne v2, v10, :cond_1e

    .line 3234
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v21, -0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3235
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3236
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3237
    const/16 v1, 0x10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3238
    return-object v5

    .line 3241
    :cond_1e
    const/16 v1, 0x7d

    if-ne v2, v1, :cond_24

    .line 3243
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v21, 0x1

    .end local v21    # "offset":I
    .local v4, "offset":I
    add-int v3, v3, v21

    .line 3244
    .end local v14    # "charIndex":I
    .local v3, "charIndex":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v6, :cond_1f

    const/16 v6, 0x1a

    goto :goto_16

    :cond_1f
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3246
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_16
    move v2, v6

    .line 3247
    if-ne v2, v10, :cond_20

    .line 3248
    const/16 v13, 0x10

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3249
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v4, -0x1

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3250
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_17

    .line 3251
    :cond_20
    const/16 v6, 0x5d

    if-ne v2, v6, :cond_21

    .line 3252
    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3253
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v4, -0x1

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3254
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_17

    .line 3255
    :cond_21
    if-ne v2, v1, :cond_22

    .line 3256
    const/16 v1, 0xd

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3257
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v4, -0x1

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3258
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_17

    .line 3259
    :cond_22
    const/16 v14, 0x1a

    if-ne v2, v14, :cond_23

    .line 3260
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v4, -0x1

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3261
    const/16 v1, 0x14

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3262
    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 3267
    :goto_17
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3273
    return-object v5

    .line 3264
    :cond_23
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3265
    const/4 v6, 0x0

    return-object v6

    .line 3269
    .end local v3    # "charIndex":I
    .end local v4    # "offset":I
    .restart local v14    # "charIndex":I
    .restart local v21    # "offset":I
    :cond_24
    const/4 v1, -0x1

    const/4 v6, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3270
    return-object v6

    .line 3212
    .end local v14    # "charIndex":I
    .end local v21    # "offset":I
    .local v1, "intVal":I
    .local v3, "exp":Z
    .local v4, "power":I
    .restart local v6    # "count":I
    .restart local v7    # "charIndex":I
    .restart local v8    # "value":F
    .restart local v9    # "small":Z
    .restart local v12    # "start":I
    .restart local v15    # "negative":Z
    .restart local v18    # "offset":I
    :cond_25
    const/16 v13, 0x10

    const/16 v14, 0x1a

    const/16 v16, 0x0

    move/from16 v9, v18

    .line 3220
    .end local v1    # "intVal":I
    .end local v3    # "exp":Z
    .end local v4    # "power":I
    .end local v6    # "count":I
    .end local v8    # "value":F
    .end local v18    # "offset":I
    .local v9, "offset":I
    :goto_18
    nop

    .line 3224
    .end local v12    # "start":I
    .end local v15    # "negative":Z
    move v10, v11

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v8, -0x1

    goto/16 :goto_2

    .line 3221
    .end local v11    # "arrayIndex":I
    .local v10, "arrayIndex":I
    .restart local v12    # "start":I
    .restart local v15    # "negative":Z
    :cond_26
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3222
    const/4 v1, 0x0

    return-object v1
.end method

.method public final scanFieldFloatArray2(J)[[F
    .locals 24
    .param p1, "fieldHashCode"    # J

    .line 3277
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3279
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    .line 3280
    .local v2, "offset":I
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3281
    check-cast v3, [[F

    return-object v3

    .line 3283
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .local v5, "offset":I
    add-int/2addr v4, v2

    .line 3284
    .local v4, "charIndex":I
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3286
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    nop

    .line 3288
    .local v2, "chLocal":C
    const/16 v7, 0x5b

    const/4 v8, -0x1

    if-eq v2, v7, :cond_2

    .line 3289
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3290
    check-cast v3, [[F

    return-object v3

    .line 3293
    :cond_2
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v5, 0x1

    .end local v5    # "offset":I
    .local v10, "offset":I
    add-int/2addr v9, v5

    .line 3294
    .end local v4    # "charIndex":I
    .local v9, "charIndex":I
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v9, v4, :cond_3

    const/16 v4, 0x1a

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3296
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    move v2, v4

    .line 3298
    const/16 v4, 0x10

    new-array v5, v4, [[F

    .line 3299
    .local v5, "arrayarray":[[F
    const/4 v11, 0x0

    .line 3302
    .local v11, "arrayarrayIndex":I
    :goto_2
    if-ne v2, v7, :cond_2c

    .line 3304
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v10, 0x1

    .end local v10    # "offset":I
    .local v13, "offset":I
    add-int/2addr v12, v10

    .line 3305
    .end local v9    # "charIndex":I
    .local v12, "charIndex":I
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v12, v9, :cond_4

    const/16 v9, 0x1a

    goto :goto_3

    :cond_4
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3307
    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_3
    move v2, v9

    .line 3309
    new-array v9, v4, [F

    .line 3310
    .local v9, "array":[F
    const/4 v10, 0x0

    .line 3313
    .local v10, "arrayIndex":I
    :goto_4
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v15, v14, v13

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    .line 3314
    .local v15, "start":I
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_5

    const/16 v17, 0x1

    goto :goto_5

    :cond_5
    const/16 v17, 0x0

    .line 3315
    .local v17, "negative":Z
    :goto_5
    if-eqz v17, :cond_7

    .line 3317
    add-int/lit8 v18, v13, 0x1

    .end local v13    # "offset":I
    .local v18, "offset":I
    add-int v12, v14, v13

    .line 3318
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v12, v13, :cond_6

    const/16 v13, 0x1a

    goto :goto_6

    :cond_6
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3320
    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    :goto_6
    move v2, v13

    move/from16 v13, v18

    .line 3323
    .end local v18    # "offset":I
    .restart local v13    # "offset":I
    :cond_7
    const/16 v14, 0x30

    if-lt v2, v14, :cond_2b

    const/16 v6, 0x39

    if-gt v2, v6, :cond_2b

    .line 3324
    add-int/lit8 v19, v2, -0x30

    .line 3327
    .local v19, "intVal":I
    :goto_7
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v20, v13, 0x1

    .end local v13    # "offset":I
    .local v20, "offset":I
    add-int v12, v4, v13

    .line 3328
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v12, v4, :cond_8

    const/16 v4, 0x1a

    goto :goto_8

    :cond_8
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3330
    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_8
    move v2, v4

    .line 3332
    if-lt v2, v14, :cond_9

    if-gt v2, v6, :cond_9

    .line 3333
    mul-int/lit8 v4, v19, 0xa

    add-int/lit8 v13, v2, -0x30

    add-int v19, v4, v13

    .line 3334
    move/from16 v13, v20

    const/16 v4, 0x10

    goto :goto_7

    .line 3340
    :cond_9
    const/4 v4, 0x1

    .line 3341
    .local v4, "power":I
    const/16 v13, 0x2e

    if-ne v2, v13, :cond_e

    .line 3343
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "offset":I
    .local v21, "offset":I
    add-int v13, v13, v20

    .line 3344
    .end local v12    # "charIndex":I
    .local v13, "charIndex":I
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v13, v12, :cond_a

    const/16 v12, 0x1a

    goto :goto_9

    :cond_a
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3346
    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    :goto_9
    move v2, v12

    .line 3348
    if-lt v2, v14, :cond_d

    if-gt v2, v6, :cond_d

    .line 3349
    mul-int/lit8 v12, v19, 0xa

    add-int/lit8 v20, v2, -0x30

    add-int v12, v12, v20

    .line 3350
    .end local v19    # "intVal":I
    .local v12, "intVal":I
    mul-int/lit8 v4, v4, 0xa

    move/from16 v19, v12

    .line 3353
    .end local v12    # "intVal":I
    .restart local v19    # "intVal":I
    :goto_a
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "offset":I
    .restart local v20    # "offset":I
    add-int v13, v12, v21

    .line 3354
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v13, v12, :cond_b

    const/16 v12, 0x1a

    goto :goto_b

    :cond_b
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3356
    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    :goto_b
    move v2, v12

    .line 3358
    if-lt v2, v14, :cond_c

    if-gt v2, v6, :cond_c

    .line 3359
    mul-int/lit8 v12, v19, 0xa

    add-int/lit8 v21, v2, -0x30

    add-int v19, v12, v21

    .line 3360
    mul-int/lit8 v4, v4, 0xa

    .line 3361
    move/from16 v21, v20

    goto :goto_a

    .line 3372
    :cond_c
    move v12, v13

    move/from16 v13, v19

    goto :goto_c

    .line 3367
    .end local v20    # "offset":I
    .restart local v21    # "offset":I
    :cond_d
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3368
    check-cast v3, [[F

    return-object v3

    .line 3341
    .end local v13    # "charIndex":I
    .end local v21    # "offset":I
    .local v12, "charIndex":I
    .restart local v20    # "offset":I
    :cond_e
    move/from16 v13, v19

    .line 3372
    .end local v19    # "intVal":I
    .local v13, "intVal":I
    :goto_c
    const/16 v3, 0x65

    if-eq v2, v3, :cond_10

    const/16 v3, 0x45

    if-ne v2, v3, :cond_f

    goto :goto_d

    :cond_f
    const/4 v3, 0x0

    goto :goto_e

    :cond_10
    :goto_d
    const/4 v3, 0x1

    .line 3373
    .local v3, "exp":Z
    :goto_e
    if-eqz v3, :cond_16

    .line 3375
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v22, v20, 0x1

    .end local v20    # "offset":I
    .local v22, "offset":I
    add-int v8, v8, v20

    .line 3376
    .end local v12    # "charIndex":I
    .local v8, "charIndex":I
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v12, :cond_11

    const/16 v12, 0x1a

    goto :goto_f

    :cond_11
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3378
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    :goto_f
    move v2, v12

    .line 3379
    const/16 v12, 0x2b

    if-eq v2, v12, :cond_13

    if-ne v2, v7, :cond_12

    goto :goto_10

    :cond_12
    move v12, v8

    move/from16 v20, v22

    goto :goto_12

    .line 3381
    :cond_13
    :goto_10
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v12, v22, 0x1

    .end local v22    # "offset":I
    .local v12, "offset":I
    add-int v7, v7, v22

    .line 3382
    .end local v8    # "charIndex":I
    .local v7, "charIndex":I
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_14

    const/16 v8, 0x1a

    goto :goto_11

    :cond_14
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3384
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_11
    move v2, v8

    move/from16 v20, v12

    move v12, v7

    .line 3387
    .end local v7    # "charIndex":I
    .local v12, "charIndex":I
    .restart local v20    # "offset":I
    :goto_12
    if-lt v2, v14, :cond_16

    if-gt v2, v6, :cond_16

    .line 3389
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v20, 0x1

    .end local v20    # "offset":I
    .local v8, "offset":I
    add-int v12, v7, v20

    .line 3390
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v12, v7, :cond_15

    const/16 v7, 0x1a

    goto :goto_13

    :cond_15
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3392
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_13
    move v2, v7

    move/from16 v20, v8

    goto :goto_12

    .line 3399
    .end local v8    # "offset":I
    .restart local v20    # "offset":I
    :cond_16
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v6, v6, v20

    sub-int/2addr v6, v15

    add-int/lit8 v6, v6, -0x1

    .line 3401
    .local v6, "count":I
    if-nez v3, :cond_17

    const/16 v7, 0xa

    if-ge v6, v7, :cond_17

    .line 3402
    int-to-float v7, v13

    int-to-float v8, v4

    div-float/2addr v7, v8

    .line 3403
    .local v7, "value":F
    if-eqz v17, :cond_18

    .line 3404
    neg-float v7, v7

    goto :goto_14

    .line 3407
    .end local v7    # "value":F
    :cond_17
    invoke-direct {v0, v15, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v7

    .line 3408
    .local v7, "text":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    move v7, v8

    .line 3411
    .local v7, "value":F
    :cond_18
    :goto_14
    array-length v8, v9

    const/4 v14, 0x3

    if-lt v10, v8, :cond_19

    .line 3412
    array-length v8, v9

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    new-array v8, v8, [F

    .line 3413
    .local v8, "tmp":[F
    invoke-static {v9, v1, v8, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3414
    move-object v9, v8

    .line 3416
    .end local v8    # "tmp":[F
    :cond_19
    add-int/lit8 v8, v10, 0x1

    .end local v10    # "arrayIndex":I
    .local v8, "arrayIndex":I
    aput v7, v9, v10

    .line 3418
    const/16 v10, 0x2c

    if-ne v2, v10, :cond_1b

    .line 3420
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v20, 0x1

    .end local v20    # "offset":I
    .local v14, "offset":I
    add-int v10, v10, v20

    .line 3421
    .end local v12    # "charIndex":I
    .local v10, "charIndex":I
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v12, :cond_1a

    const/16 v12, 0x1a

    goto :goto_15

    :cond_1a
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3423
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    :goto_15
    move v2, v12

    move v12, v10

    move v13, v14

    const/16 v14, 0x10

    const/16 v16, 0x1a

    goto/16 :goto_1b

    .line 3424
    .end local v10    # "charIndex":I
    .end local v14    # "offset":I
    .restart local v12    # "charIndex":I
    .restart local v20    # "offset":I
    :cond_1b
    const/16 v10, 0x5d

    if-ne v2, v10, :cond_2a

    .line 3426
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v23, v20, 0x1

    .end local v20    # "offset":I
    .local v23, "offset":I
    add-int v10, v10, v20

    .line 3427
    .end local v12    # "charIndex":I
    .restart local v10    # "charIndex":I
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v12, :cond_1c

    const/16 v12, 0x1a

    goto :goto_16

    :cond_1c
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3429
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    :goto_16
    move v2, v12

    .line 3430
    nop

    .line 3439
    .end local v3    # "exp":Z
    .end local v4    # "power":I
    .end local v6    # "count":I
    .end local v7    # "value":F
    .end local v13    # "intVal":I
    .end local v15    # "start":I
    .end local v17    # "negative":Z
    array-length v3, v9

    if-eq v8, v3, :cond_1d

    .line 3440
    new-array v3, v8, [F

    .line 3441
    .local v3, "tmp":[F
    invoke-static {v9, v1, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3442
    move-object v9, v3

    .line 3445
    .end local v3    # "tmp":[F
    :cond_1d
    array-length v3, v5

    if-lt v11, v3, :cond_1e

    .line 3446
    array-length v3, v5

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [[F

    .line 3447
    .local v3, "tmp":[[F
    invoke-static {v9, v1, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3448
    move-object v4, v3

    move-object v5, v4

    .line 3450
    .end local v3    # "tmp":[[F
    :cond_1e
    add-int/lit8 v3, v11, 0x1

    .end local v11    # "arrayarrayIndex":I
    .local v3, "arrayarrayIndex":I
    aput-object v9, v5, v11

    .line 3452
    const/16 v4, 0x2c

    if-ne v2, v4, :cond_20

    .line 3454
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v23, 0x1

    .end local v23    # "offset":I
    .local v6, "offset":I
    add-int v4, v4, v23

    .line 3455
    .end local v10    # "charIndex":I
    .local v4, "charIndex":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v7, :cond_1f

    const/16 v7, 0x1a

    goto :goto_17

    :cond_1f
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3457
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_17
    move v2, v7

    move v9, v4

    move v10, v6

    const/16 v6, 0x1a

    const/16 v14, 0x10

    goto/16 :goto_1a

    .line 3458
    .end local v4    # "charIndex":I
    .end local v6    # "offset":I
    .restart local v10    # "charIndex":I
    .restart local v23    # "offset":I
    :cond_20
    const/16 v4, 0x5d

    if-ne v2, v4, :cond_29

    .line 3460
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v23, 0x1

    .end local v23    # "offset":I
    .restart local v6    # "offset":I
    add-int v4, v4, v23

    .line 3461
    .end local v10    # "charIndex":I
    .restart local v4    # "charIndex":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v7, :cond_21

    const/16 v7, 0x1a

    goto :goto_18

    :cond_21
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3463
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_18
    move v2, v7

    .line 3464
    nop

    .line 3470
    .end local v8    # "arrayIndex":I
    .end local v9    # "array":[F
    array-length v7, v5

    if-eq v3, v7, :cond_22

    .line 3471
    new-array v7, v3, [[F

    .line 3472
    .local v7, "tmp":[[F
    invoke-static {v5, v1, v7, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3473
    move-object v5, v7

    .line 3476
    .end local v7    # "tmp":[[F
    :cond_22
    const/16 v1, 0x2c

    if-ne v2, v1, :cond_23

    .line 3477
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v6, -0x1

    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3478
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3479
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3480
    const/16 v1, 0x10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3481
    return-object v5

    .line 3484
    :cond_23
    const/16 v1, 0x7d

    if-ne v2, v1, :cond_28

    .line 3485
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "offset":I
    .local v8, "offset":I
    add-int/2addr v7, v6

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3486
    const/16 v6, 0x2c

    if-ne v2, v6, :cond_24

    .line 3487
    const/16 v14, 0x10

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3488
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v8, -0x1

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3489
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    .line 3490
    :cond_24
    const/16 v6, 0x5d

    if-ne v2, v6, :cond_25

    .line 3491
    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3492
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v8, -0x1

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3493
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    .line 3494
    :cond_25
    if-ne v2, v1, :cond_26

    .line 3495
    const/16 v1, 0xd

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3496
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v8, -0x1

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3497
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    .line 3498
    :cond_26
    const/16 v6, 0x1a

    if-ne v2, v6, :cond_27

    .line 3499
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v8, -0x1

    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3500
    const/16 v1, 0x14

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3501
    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 3506
    :goto_19
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3512
    return-object v5

    .line 3503
    :cond_27
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3504
    const/4 v7, 0x0

    move-object v1, v7

    check-cast v1, [[F

    return-object v1

    .line 3508
    .end local v8    # "offset":I
    .restart local v6    # "offset":I
    :cond_28
    const/4 v1, -0x1

    const/4 v7, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3509
    move-object v1, v7

    check-cast v1, [[F

    return-object v1

    .line 3458
    .end local v4    # "charIndex":I
    .end local v6    # "offset":I
    .local v8, "arrayIndex":I
    .restart local v9    # "array":[F
    .restart local v10    # "charIndex":I
    .restart local v23    # "offset":I
    :cond_29
    const/16 v6, 0x1a

    const/16 v14, 0x10

    move v9, v10

    move/from16 v10, v23

    .line 3466
    .end local v8    # "arrayIndex":I
    .end local v23    # "offset":I
    .local v9, "charIndex":I
    .local v10, "offset":I
    :goto_1a
    move v11, v3

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v7, 0x5b

    const/4 v8, -0x1

    goto/16 :goto_2

    .line 3424
    .end local v10    # "offset":I
    .local v3, "exp":Z
    .local v4, "power":I
    .local v6, "count":I
    .local v7, "value":F
    .restart local v8    # "arrayIndex":I
    .local v9, "array":[F
    .restart local v11    # "arrayarrayIndex":I
    .restart local v12    # "charIndex":I
    .restart local v13    # "intVal":I
    .restart local v15    # "start":I
    .restart local v17    # "negative":Z
    .restart local v20    # "offset":I
    :cond_2a
    const/16 v14, 0x10

    const/16 v16, 0x1a

    move/from16 v13, v20

    .line 3432
    .end local v3    # "exp":Z
    .end local v4    # "power":I
    .end local v6    # "count":I
    .end local v7    # "value":F
    .end local v20    # "offset":I
    .local v13, "offset":I
    :goto_1b
    nop

    .line 3436
    .end local v15    # "start":I
    .end local v17    # "negative":Z
    move v10, v8

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v7, 0x5b

    const/4 v8, -0x1

    goto/16 :goto_4

    .line 3433
    .end local v8    # "arrayIndex":I
    .local v10, "arrayIndex":I
    .restart local v15    # "start":I
    .restart local v17    # "negative":Z
    :cond_2b
    const/4 v3, -0x1

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3434
    const/4 v4, 0x0

    move-object v3, v4

    check-cast v3, [[F

    return-object v3

    .line 3302
    .end local v12    # "charIndex":I
    .end local v13    # "offset":I
    .end local v15    # "start":I
    .end local v17    # "negative":Z
    .local v9, "charIndex":I
    .local v10, "offset":I
    :cond_2c
    move-object v4, v3

    const/4 v3, -0x1

    const/16 v14, 0x10

    const/16 v16, 0x1a

    move-object v3, v4

    const/16 v4, 0x10

    const/16 v7, 0x5b

    const/4 v8, -0x1

    goto/16 :goto_2
.end method

.method public scanFieldInt(J)I
    .locals 17
    .param p1, "fieldHashCode"    # J

    .line 2132
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2134
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    .line 2135
    .local v2, "offset":I
    if-nez v2, :cond_0

    .line 2136
    return v1

    .line 2140
    :cond_0
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "offset":I
    .local v4, "offset":I
    add-int/2addr v3, v2

    .line 2141
    .local v3, "charIndex":I
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v5, 0x1a

    if-lt v3, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2143
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    nop

    .line 2145
    .local v2, "chLocal":C
    const/16 v6, 0x22

    const/4 v7, 0x1

    if-ne v2, v6, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 2146
    .local v8, "quote":Z
    :goto_1
    if-eqz v8, :cond_4

    .line 2147
    const/4 v8, 0x1

    .line 2149
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "offset":I
    .local v10, "offset":I
    add-int v3, v9, v4

    .line 2150
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v4, :cond_3

    const/16 v4, 0x1a

    goto :goto_2

    :cond_3
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2152
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_2
    move v2, v4

    move v4, v10

    .line 2155
    .end local v10    # "offset":I
    .restart local v4    # "offset":I
    :cond_4
    const/16 v9, 0x2d

    if-ne v2, v9, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    .line 2156
    .local v9, "negative":Z
    :goto_3
    if-eqz v9, :cond_7

    .line 2157
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v4, 0x1

    .end local v4    # "offset":I
    .local v11, "offset":I
    add-int v3, v10, v4

    .line 2158
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v4, :cond_6

    const/16 v4, 0x1a

    goto :goto_4

    :cond_6
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2160
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_4
    move v2, v4

    move v4, v11

    .line 2164
    .end local v11    # "offset":I
    .restart local v4    # "offset":I
    :cond_7
    const/16 v10, 0x30

    const/4 v11, -0x1

    if-lt v2, v10, :cond_1e

    const/16 v12, 0x39

    if-gt v2, v12, :cond_1e

    .line 2165
    add-int/lit8 v13, v2, -0x30

    .line 2168
    .local v13, "value":I
    :goto_5
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v15, v4, 0x1

    .end local v4    # "offset":I
    .local v15, "offset":I
    add-int v3, v14, v4

    .line 2169
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v4, :cond_8

    const/16 v4, 0x1a

    goto :goto_6

    :cond_8
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2171
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_6
    move v2, v4

    .line 2172
    if-lt v2, v10, :cond_9

    if-gt v2, v12, :cond_9

    .line 2173
    mul-int/lit8 v4, v13, 0xa

    add-int/lit8 v14, v2, -0x30

    add-int v13, v4, v14

    move v4, v15

    goto :goto_5

    .line 2174
    :cond_9
    const/16 v4, 0x2e

    if-ne v2, v4, :cond_a

    .line 2175
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2176
    return v1

    .line 2177
    :cond_a
    if-ne v2, v6, :cond_d

    .line 2178
    if-nez v8, :cond_b

    .line 2179
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2180
    return v1

    .line 2182
    :cond_b
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v15, 0x1

    .end local v15    # "offset":I
    .local v6, "offset":I
    add-int/2addr v4, v15

    .line 2183
    .local v4, "index":I
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_c

    const/16 v10, 0x1a

    goto :goto_7

    :cond_c
    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2185
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_7
    move v2, v10

    .line 2186
    move v15, v6

    .line 2191
    .end local v4    # "index":I
    .end local v6    # "offset":I
    .restart local v15    # "offset":I
    :cond_d
    if-gez v13, :cond_e

    .line 2192
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2193
    return v1

    .line 2201
    :cond_e
    :goto_8
    const/16 v4, 0x10

    const/16 v6, 0x2c

    if-ne v2, v6, :cond_11

    .line 2202
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v15, -0x1

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2205
    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2206
    .local v1, "index":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v6, :cond_f

    goto :goto_9

    :cond_f
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2208
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_9
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2210
    .end local v1    # "index":I
    const/4 v1, 0x3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2211
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2212
    if-eqz v9, :cond_10

    neg-int v1, v13

    goto :goto_a

    :cond_10
    move v1, v13

    :goto_a
    return v1

    .line 2213
    :cond_11
    const/16 v10, 0xd

    const/16 v12, 0x20

    if-gt v2, v12, :cond_14

    if-eq v2, v12, :cond_12

    const/16 v12, 0xa

    if-eq v2, v12, :cond_12

    if-eq v2, v10, :cond_12

    const/16 v12, 0x9

    if-eq v2, v12, :cond_12

    const/16 v12, 0xc

    if-eq v2, v12, :cond_12

    const/16 v12, 0x8

    if-ne v2, v12, :cond_14

    .line 2220
    :cond_12
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v15, 0x1

    .end local v15    # "offset":I
    .restart local v6    # "offset":I
    add-int v3, v4, v15

    .line 2221
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v4, :cond_13

    const/16 v4, 0x1a

    goto :goto_b

    :cond_13
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2223
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_b
    move v2, v4

    .line 2224
    move v15, v6

    goto :goto_8

    .line 2229
    .end local v6    # "offset":I
    .restart local v15    # "offset":I
    :cond_14
    const/16 v12, 0x7d

    if-ne v2, v12, :cond_1d

    .line 2230
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .local v16, "offset":I
    add-int/2addr v14, v15

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 2231
    if-ne v2, v6, :cond_16

    .line 2232
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2233
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v16, -0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2236
    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2237
    .restart local v1    # "index":I
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_15

    goto :goto_c

    :cond_15
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2239
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_c
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2240
    .end local v1    # "index":I
    goto :goto_f

    .line 2241
    :cond_16
    const/16 v4, 0x5d

    if-ne v2, v4, :cond_18

    .line 2242
    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2243
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v16, -0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2246
    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2247
    .restart local v1    # "index":I
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_17

    goto :goto_d

    :cond_17
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2249
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_d
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2250
    .end local v1    # "index":I
    goto :goto_f

    .line 2251
    :cond_18
    if-ne v2, v12, :cond_1a

    .line 2252
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2253
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v16, -0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2256
    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2257
    .restart local v1    # "index":I
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_19

    goto :goto_e

    :cond_19
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2259
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_e
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2260
    .end local v1    # "index":I
    goto :goto_f

    .line 2261
    :cond_1a
    if-ne v2, v5, :cond_1c

    .line 2262
    const/16 v1, 0x14

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2263
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v16, -0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2264
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2269
    :goto_f
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2275
    if-eqz v9, :cond_1b

    neg-int v1, v13

    goto :goto_10

    :cond_1b
    move v1, v13

    :goto_10
    return v1

    .line 2266
    :cond_1c
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2267
    return v1

    .line 2271
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_1d
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2272
    return v1

    .line 2196
    .end local v13    # "value":I
    .end local v15    # "offset":I
    .local v4, "offset":I
    :cond_1e
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2197
    return v1
.end method

.method public final scanFieldIntArray(J)[I
    .locals 19
    .param p1, "fieldHashCode"    # J

    .line 2279
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2281
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    .line 2282
    .local v2, "offset":I
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2283
    return-object v3

    .line 2286
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .local v5, "offset":I
    add-int/2addr v4, v2

    .line 2287
    .local v4, "charIndex":I
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2289
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    nop

    .line 2290
    .local v2, "chLocal":C
    const/16 v7, 0x5b

    const/4 v8, -0x1

    if-eq v2, v7, :cond_2

    .line 2291
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2292
    return-object v3

    .line 2295
    :cond_2
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "offset":I
    .local v9, "offset":I
    add-int/2addr v7, v5

    .line 2296
    .end local v4    # "charIndex":I
    .local v7, "charIndex":I
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v4, :cond_3

    const/16 v4, 0x1a

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2298
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    move v2, v4

    .line 2301
    const/16 v4, 0x10

    new-array v5, v4, [I

    .line 2302
    .local v5, "array":[I
    const/4 v10, 0x0

    .line 2304
    .local v10, "arrayIndex":I
    const/4 v11, 0x3

    const/16 v12, 0x2c

    const/16 v13, 0x5d

    if-ne v2, v13, :cond_5

    .line 2306
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v15, v9, 0x1

    .end local v9    # "offset":I
    .local v15, "offset":I
    add-int/2addr v14, v9

    .line 2307
    .end local v7    # "charIndex":I
    .local v14, "charIndex":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v14, v7, :cond_4

    const/16 v7, 0x1a

    goto :goto_2

    :cond_4
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2309
    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_2
    move v2, v7

    goto/16 :goto_a

    .line 2312
    .end local v14    # "charIndex":I
    .end local v15    # "offset":I
    .restart local v7    # "charIndex":I
    .restart local v9    # "offset":I
    :cond_5
    :goto_3
    const/4 v14, 0x0

    .line 2313
    .local v14, "nagative":Z
    const/16 v15, 0x2d

    if-ne v2, v15, :cond_7

    .line 2315
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v9, 0x1

    .end local v9    # "offset":I
    .local v16, "offset":I
    add-int v7, v15, v9

    .line 2316
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v9, :cond_6

    const/16 v9, 0x1a

    goto :goto_4

    :cond_6
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2318
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_4
    move v2, v9

    .line 2319
    const/4 v14, 0x1

    move/from16 v9, v16

    .line 2321
    .end local v16    # "offset":I
    .restart local v9    # "offset":I
    :cond_7
    const/16 v15, 0x30

    if-lt v2, v15, :cond_17

    const/16 v3, 0x39

    if-gt v2, v3, :cond_17

    .line 2322
    add-int/lit8 v17, v2, -0x30

    move/from16 v8, v17

    .line 2325
    .local v8, "value":I
    :goto_5
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v18, v9, 0x1

    .end local v9    # "offset":I
    .local v18, "offset":I
    add-int v7, v6, v9

    .line 2326
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v6, :cond_8

    const/16 v6, 0x1a

    goto :goto_6

    :cond_8
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2328
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_6
    move v2, v6

    .line 2330
    if-lt v2, v15, :cond_9

    if-gt v2, v3, :cond_9

    .line 2331
    mul-int/lit8 v6, v8, 0xa

    add-int/lit8 v9, v2, -0x30

    add-int v8, v6, v9

    move/from16 v9, v18

    goto :goto_5

    .line 2337
    :cond_9
    array-length v3, v5

    if-lt v10, v3, :cond_a

    .line 2338
    array-length v3, v5

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    .line 2339
    .local v3, "tmp":[I
    invoke-static {v5, v1, v3, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2340
    move-object v5, v3

    .line 2342
    .end local v3    # "tmp":[I
    :cond_a
    add-int/lit8 v3, v10, 0x1

    .end local v10    # "arrayIndex":I
    .local v3, "arrayIndex":I
    if-eqz v14, :cond_b

    neg-int v6, v8

    goto :goto_7

    :cond_b
    move v6, v8

    :goto_7
    aput v6, v5, v10

    .line 2344
    if-ne v2, v12, :cond_d

    .line 2346
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v18, 0x1

    .end local v18    # "offset":I
    .restart local v9    # "offset":I
    add-int v6, v6, v18

    .line 2347
    .end local v7    # "charIndex":I
    .local v6, "charIndex":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_c

    const/16 v7, 0x1a

    goto :goto_8

    :cond_c
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2349
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_8
    move v2, v7

    move v7, v6

    const/16 v15, 0x1a

    goto/16 :goto_c

    .line 2350
    .end local v6    # "charIndex":I
    .end local v9    # "offset":I
    .restart local v7    # "charIndex":I
    .restart local v18    # "offset":I
    :cond_d
    if-ne v2, v13, :cond_16

    .line 2352
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v15, v18, 0x1

    .end local v18    # "offset":I
    .restart local v15    # "offset":I
    add-int v6, v6, v18

    .line 2353
    .end local v7    # "charIndex":I
    .restart local v6    # "charIndex":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_e

    const/16 v7, 0x1a

    goto :goto_9

    :cond_e
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2355
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_9
    move v2, v7

    .line 2356
    move v10, v3

    move v14, v6

    .line 2366
    .end local v3    # "arrayIndex":I
    .end local v6    # "charIndex":I
    .end local v8    # "value":I
    .restart local v10    # "arrayIndex":I
    .local v14, "charIndex":I
    :goto_a
    array-length v3, v5

    if-eq v10, v3, :cond_f

    .line 2367
    new-array v3, v10, [I

    .line 2368
    .local v3, "tmp":[I
    invoke-static {v5, v1, v3, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2369
    move-object v5, v3

    .line 2372
    .end local v3    # "tmp":[I
    :cond_f
    if-ne v2, v12, :cond_10

    .line 2373
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v15, -0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2374
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2375
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2376
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2377
    return-object v5

    .line 2380
    :cond_10
    const/16 v1, 0x7d

    if-ne v2, v1, :cond_15

    .line 2381
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v15, 0x1

    .end local v15    # "offset":I
    .local v6, "offset":I
    add-int/2addr v3, v15

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 2382
    if-ne v2, v12, :cond_11

    .line 2383
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2384
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v6, -0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2385
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_b

    .line 2386
    :cond_11
    if-ne v2, v13, :cond_12

    .line 2387
    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2388
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v6, -0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2389
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_b

    .line 2390
    :cond_12
    if-ne v2, v1, :cond_13

    .line 2391
    const/16 v1, 0xd

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2392
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v6, -0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2393
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_b

    .line 2394
    :cond_13
    const/16 v15, 0x1a

    if-ne v2, v15, :cond_14

    .line 2395
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v6, -0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2396
    const/16 v1, 0x14

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2397
    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2402
    :goto_b
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2408
    return-object v5

    .line 2399
    :cond_14
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2400
    const/4 v3, 0x0

    return-object v3

    .line 2404
    .end local v6    # "offset":I
    .restart local v15    # "offset":I
    :cond_15
    const/4 v1, -0x1

    const/4 v3, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2405
    return-object v3

    .line 2350
    .end local v10    # "arrayIndex":I
    .end local v15    # "offset":I
    .local v3, "arrayIndex":I
    .restart local v7    # "charIndex":I
    .restart local v8    # "value":I
    .local v14, "nagative":Z
    .restart local v18    # "offset":I
    :cond_16
    const/16 v15, 0x1a

    move/from16 v9, v18

    .line 2358
    .end local v8    # "value":I
    .end local v18    # "offset":I
    .restart local v9    # "offset":I
    :goto_c
    nop

    .line 2362
    .end local v14    # "nagative":Z
    move v10, v3

    const/4 v3, 0x0

    const/4 v8, -0x1

    goto/16 :goto_3

    .line 2359
    .end local v3    # "arrayIndex":I
    .restart local v10    # "arrayIndex":I
    .restart local v14    # "nagative":Z
    :cond_17
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2360
    const/4 v1, 0x0

    return-object v1
.end method

.method public scanFieldLong(J)J
    .locals 19
    .param p1, "fieldHashCode"    # J

    .line 2412
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2414
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    .line 2415
    .local v2, "offset":I
    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    .line 2416
    return-wide v3

    .line 2422
    :cond_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "offset":I
    .local v6, "offset":I
    add-int/2addr v5, v2

    .line 2423
    .local v5, "index":I
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2425
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    nop

    .line 2430
    .end local v5    # "index":I
    .local v2, "chLocal":C
    const/16 v5, 0x22

    if-ne v2, v5, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 2431
    .local v9, "quote":Z
    :goto_1
    if-eqz v9, :cond_4

    .line 2432
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v6, 0x1

    .end local v6    # "offset":I
    .local v11, "offset":I
    add-int/2addr v10, v6

    .line 2433
    .local v10, "index":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v6, :cond_3

    const/16 v6, 0x1a

    goto :goto_2

    :cond_3
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2435
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_2
    move v2, v6

    move v6, v11

    .line 2438
    .end local v10    # "index":I
    .end local v11    # "offset":I
    .restart local v6    # "offset":I
    :cond_4
    const/16 v10, 0x2d

    if-ne v2, v10, :cond_5

    const/4 v1, 0x1

    .line 2439
    .local v1, "negative":Z
    :cond_5
    if-eqz v1, :cond_7

    .line 2440
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v6, 0x1

    .end local v6    # "offset":I
    .restart local v11    # "offset":I
    add-int/2addr v10, v6

    .line 2441
    .restart local v10    # "index":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v6, :cond_6

    const/16 v6, 0x1a

    goto :goto_3

    :cond_6
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2443
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_3
    move v2, v6

    move v6, v11

    .line 2446
    .end local v10    # "index":I
    .end local v11    # "offset":I
    .restart local v6    # "offset":I
    :cond_7
    const/16 v10, 0x30

    const/4 v11, -0x1

    if-lt v2, v10, :cond_1b

    const/16 v12, 0x39

    if-gt v2, v12, :cond_1b

    .line 2448
    add-int/lit8 v13, v2, -0x30

    int-to-long v13, v13

    .line 2452
    .local v13, "value":J
    :goto_4
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v6, 0x1

    .end local v6    # "offset":I
    .local v16, "offset":I
    add-int/2addr v15, v6

    .line 2453
    .local v15, "index":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v15, v6, :cond_8

    const/16 v6, 0x1a

    goto :goto_5

    :cond_8
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2455
    invoke-virtual {v6, v15}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_5
    move v2, v6

    .line 2457
    .end local v15    # "index":I
    if-lt v2, v10, :cond_9

    if-gt v2, v12, :cond_9

    .line 2458
    const-wide/16 v17, 0xa

    mul-long v17, v17, v13

    add-int/lit8 v6, v2, -0x30

    int-to-long v7, v6

    add-long v13, v17, v7

    move/from16 v6, v16

    goto :goto_4

    .line 2459
    :cond_9
    const/16 v6, 0x2e

    if-ne v2, v6, :cond_a

    .line 2460
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2461
    return-wide v3

    .line 2462
    :cond_a
    if-ne v2, v5, :cond_d

    .line 2463
    if-nez v9, :cond_b

    .line 2464
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2465
    return-wide v3

    .line 2467
    :cond_b
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v16, 0x1

    .end local v16    # "offset":I
    .restart local v6    # "offset":I
    add-int v5, v5, v16

    .line 2468
    .restart local v5    # "index":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v7, :cond_c

    const/16 v7, 0x1a

    goto :goto_6

    :cond_c
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2470
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_6
    move v2, v7

    .line 2471
    move/from16 v16, v6

    .line 2476
    .end local v5    # "index":I
    .end local v6    # "offset":I
    .restart local v16    # "offset":I
    :cond_d
    cmp-long v5, v13, v3

    if-gez v5, :cond_e

    .line 2477
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2478
    return-wide v3

    .line 2485
    :cond_e
    const/16 v5, 0x10

    const/16 v6, 0x2c

    if-ne v2, v6, :cond_11

    .line 2486
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v16, -0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2489
    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2490
    .local v3, "index":I
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v4, :cond_f

    const/16 v7, 0x1a

    goto :goto_7

    :cond_f
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2492
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_7
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2494
    .end local v3    # "index":I
    const/4 v3, 0x3

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2495
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2496
    if-eqz v1, :cond_10

    neg-long v3, v13

    goto :goto_8

    :cond_10
    move-wide v3, v13

    :goto_8
    return-wide v3

    .line 2499
    :cond_11
    const/16 v7, 0x7d

    if-ne v2, v7, :cond_1a

    .line 2500
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v16, 0x1

    .end local v16    # "offset":I
    .local v10, "offset":I
    add-int v8, v8, v16

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 2501
    if-ne v2, v6, :cond_13

    .line 2502
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2503
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v10, -0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2506
    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2507
    .restart local v3    # "index":I
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v4, :cond_12

    const/16 v7, 0x1a

    goto :goto_9

    :cond_12
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2509
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_9
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2510
    .end local v3    # "index":I
    goto :goto_c

    .line 2511
    :cond_13
    const/16 v5, 0x5d

    if-ne v2, v5, :cond_15

    .line 2512
    const/16 v3, 0xf

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2513
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v10, -0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2516
    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2517
    .restart local v3    # "index":I
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v4, :cond_14

    const/16 v7, 0x1a

    goto :goto_a

    :cond_14
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2519
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_a
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2520
    .end local v3    # "index":I
    goto :goto_c

    .line 2521
    :cond_15
    if-ne v2, v7, :cond_17

    .line 2522
    const/16 v3, 0xd

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2523
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v10, -0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2526
    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2527
    .restart local v3    # "index":I
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v4, :cond_16

    const/16 v7, 0x1a

    goto :goto_b

    :cond_16
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2529
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_b
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2530
    .end local v3    # "index":I
    goto :goto_c

    .line 2531
    :cond_17
    const/16 v5, 0x1a

    if-ne v2, v5, :cond_19

    .line 2532
    const/16 v3, 0x14

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2533
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v10, -0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2534
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2539
    :goto_c
    const/4 v3, 0x4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2545
    if-eqz v1, :cond_18

    neg-long v3, v13

    goto :goto_d

    :cond_18
    move-wide v3, v13

    :goto_d
    return-wide v3

    .line 2536
    :cond_19
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2537
    return-wide v3

    .line 2541
    .end local v10    # "offset":I
    .restart local v16    # "offset":I
    :cond_1a
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2542
    return-wide v3

    .line 2481
    .end local v13    # "value":J
    .end local v16    # "offset":I
    .restart local v6    # "offset":I
    :cond_1b
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2482
    return-wide v3
.end method

.method public scanFieldString(J)Ljava/lang/String;
    .locals 15
    .param p1, "fieldHashCode"    # J

    .line 2549
    move-object v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2551
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    .line 2552
    .local v2, "offset":I
    if-nez v2, :cond_0

    .line 2553
    const/4 v1, 0x0

    return-object v1

    .line 2558
    :cond_0
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "offset":I
    .local v4, "offset":I
    add-int/2addr v3, v2

    .line 2559
    .local v3, "index":I
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const-string/jumbo v5, "unclosed str, "

    if-ge v3, v2, :cond_11

    .line 2562
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2566
    .end local v3    # "index":I
    .local v2, "chLocal":C
    const/16 v3, 0x22

    const/4 v6, -0x1

    if-eq v2, v3, :cond_1

    .line 2567
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2569
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    return-object v1

    .line 2572
    :cond_1
    const/16 v7, 0x22

    .line 2573
    .local v7, "quoteChar":C
    const/4 v8, 0x0

    .line 2574
    .local v8, "hasSpecial":Z
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v9, v4

    .line 2575
    .local v9, "startIndex":I
    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v3, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 2576
    .local v10, "endIndex":I
    if-eq v10, v6, :cond_10

    .line 2580
    const/4 v5, 0x0

    .line 2581
    .local v5, "strVal":Ljava/lang/String;
    sget-boolean v11, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    if-eqz v11, :cond_2

    .line 2582
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v11, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 2584
    :cond_2
    sub-int v11, v10, v9

    .line 2585
    .local v11, "chars_len":I
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v12, v4

    invoke-virtual {p0, v12, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v12

    .line 2586
    .local v12, "chars":[C
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v12, v1, v11}, Ljava/lang/String;-><init>([CII)V

    move-object v5, v13

    .line 2589
    .end local v11    # "chars_len":I
    .end local v12    # "chars":[C
    :goto_0
    const/16 v11, 0x5c

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-eq v12, v6, :cond_6

    .line 2591
    :goto_1
    const/4 v12, 0x0

    .line 2592
    .local v12, "slashCount":I
    add-int/lit8 v13, v10, -0x1

    .local v13, "i":I
    :goto_2
    if-ltz v13, :cond_3

    .line 2593
    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v11, :cond_3

    .line 2594
    const/4 v8, 0x1

    .line 2595
    add-int/lit8 v12, v12, 0x1

    .line 2592
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 2600
    .end local v13    # "i":I
    :cond_3
    rem-int/lit8 v13, v12, 0x2

    if-nez v13, :cond_5

    .line 2601
    nop

    .line 2606
    .end local v12    # "slashCount":I
    sub-int v3, v10, v9

    .line 2607
    .local v3, "chars_len":I
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v12, v4

    invoke-virtual {p0, v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v12

    .line 2608
    .local v12, "chars":[C
    if-eqz v8, :cond_4

    .line 2609
    invoke-static {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 2611
    :cond_4
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v12, v1, v3}, Ljava/lang/String;-><init>([CII)V

    move-object v5, v13

    .line 2612
    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v6, :cond_6

    .line 2613
    invoke-static {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 2603
    .end local v3    # "chars_len":I
    .local v12, "slashCount":I
    :cond_5
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v13, v3, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 2604
    .end local v12    # "slashCount":I
    goto :goto_1

    .line 2621
    :cond_6
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move v1, v10

    .line 2622
    .local v1, "index":I
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v11, 0x1a

    if-lt v1, v3, :cond_7

    const/16 v3, 0x1a

    goto :goto_4

    :cond_7
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2624
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_4
    move v1, v3

    .line 2627
    .end local v2    # "chLocal":C
    .local v1, "chLocal":C
    const/16 v2, 0x10

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_9

    .line 2628
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2631
    add-int/lit8 v3, v10, 0x1

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2632
    .local v3, "index":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v6, :cond_8

    goto :goto_5

    :cond_8
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2634
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_5
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2636
    .end local v3    # "index":I
    const/4 v3, 0x3

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2637
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2638
    return-object v5

    .line 2641
    :cond_9
    const/16 v12, 0x7d

    if-ne v1, v12, :cond_f

    .line 2643
    add-int/lit8 v10, v10, 0x1

    move v13, v10

    .line 2644
    .local v13, "charIndex":I
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v13, v14, :cond_a

    const/16 v14, 0x1a

    goto :goto_6

    :cond_a
    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2646
    invoke-virtual {v14, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_6
    move v1, v14

    .line 2648
    if-ne v1, v3, :cond_b

    .line 2649
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2650
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2651
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    .line 2652
    :cond_b
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_c

    .line 2653
    const/16 v2, 0xf

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2654
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2655
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    .line 2656
    :cond_c
    if-ne v1, v12, :cond_d

    .line 2657
    const/16 v2, 0xd

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2658
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2659
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    .line 2660
    :cond_d
    if-ne v1, v11, :cond_e

    .line 2661
    const/16 v2, 0x14

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2662
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2663
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2668
    :goto_7
    const/4 v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2669
    .end local v13    # "charIndex":I
    nop

    .line 2674
    return-object v5

    .line 2665
    .restart local v13    # "charIndex":I
    :cond_e
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2666
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    return-object v2

    .line 2670
    .end local v13    # "charIndex":I
    :cond_f
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2671
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    return-object v2

    .line 2577
    .end local v1    # "chLocal":C
    .end local v5    # "strVal":Ljava/lang/String;
    .restart local v2    # "chLocal":C
    :cond_10
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2560
    .end local v2    # "chLocal":C
    .end local v7    # "quoteChar":C
    .end local v8    # "hasSpecial":Z
    .end local v9    # "startIndex":I
    .end local v10    # "endIndex":I
    .restart local v3    # "index":I
    :cond_11
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public scanFieldSymbol(J)J
    .locals 16
    .param p1, "fieldHashCode"    # J

    .line 4077
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4079
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v1

    .line 4080
    .local v1, "offset":I
    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 4081
    return-wide v2

    .line 4084
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "offset":I
    .local v5, "offset":I
    add-int/2addr v4, v1

    .line 4085
    .local v4, "charIndex":I
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v6, 0x1a

    if-lt v4, v1, :cond_1

    const/16 v1, 0x1a

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4087
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_0
    nop

    .line 4089
    .local v1, "chLocal":C
    const/16 v7, 0x22

    const/4 v8, -0x1

    if-eq v1, v7, :cond_2

    .line 4090
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4091
    return-wide v2

    .line 4094
    :cond_2
    const-wide v9, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 4095
    .local v9, "hash":J
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v11, v5

    .line 4097
    .local v11, "start":I
    :goto_1
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v5, 0x1

    .end local v5    # "offset":I
    .local v13, "offset":I
    add-int v4, v12, v5

    .line 4098
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v5, :cond_3

    const/16 v5, 0x1a

    goto :goto_2

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4100
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_2
    move v1, v5

    .line 4102
    if-ne v1, v7, :cond_d

    .line 4103
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v13, 0x1

    .end local v13    # "offset":I
    .local v7, "offset":I
    add-int/2addr v5, v13

    .line 4104
    .end local v4    # "charIndex":I
    .local v5, "charIndex":I
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v4, :cond_4

    const/16 v4, 0x1a

    goto :goto_3

    :cond_4
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4106
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_3
    move v1, v4

    .line 4107
    nop

    .line 4119
    const/16 v4, 0x2c

    if-ne v1, v4, :cond_6

    .line 4120
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v7, -0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4123
    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4124
    .local v2, "index":I
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v3, :cond_5

    goto :goto_4

    :cond_5
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4126
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_4
    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 4128
    .end local v2    # "index":I
    const/4 v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4129
    return-wide v9

    .line 4132
    :cond_6
    const/16 v12, 0x7d

    if-ne v1, v12, :cond_c

    .line 4133
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v7, 0x1

    .end local v7    # "offset":I
    .local v14, "offset":I
    add-int/2addr v13, v7

    .line 4134
    .end local v5    # "charIndex":I
    .local v13, "charIndex":I
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v13, v5, :cond_7

    const/16 v5, 0x1a

    goto :goto_5

    :cond_7
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4136
    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_5
    move v1, v5

    .line 4137
    if-ne v1, v4, :cond_8

    .line 4138
    const/16 v2, 0x10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4139
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v14, -0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4140
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    .line 4141
    :cond_8
    const/16 v4, 0x5d

    if-ne v1, v4, :cond_9

    .line 4142
    const/16 v2, 0xf

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4143
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v14, -0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4144
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    .line 4145
    :cond_9
    if-ne v1, v12, :cond_a

    .line 4146
    const/16 v2, 0xd

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4147
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v14, -0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4148
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    .line 4149
    :cond_a
    if-ne v1, v6, :cond_b

    .line 4150
    const/16 v2, 0x14

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4151
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v14, -0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4152
    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 4157
    :goto_6
    const/4 v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4163
    return-wide v9

    .line 4154
    :cond_b
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4155
    return-wide v2

    .line 4159
    .end local v13    # "charIndex":I
    .end local v14    # "offset":I
    .restart local v5    # "charIndex":I
    .restart local v7    # "offset":I
    :cond_c
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4160
    return-wide v2

    .line 4110
    .end local v5    # "charIndex":I
    .end local v7    # "offset":I
    .restart local v4    # "charIndex":I
    .local v13, "offset":I
    :cond_d
    int-to-long v14, v1

    xor-long/2addr v9, v14

    .line 4111
    const-wide v14, 0x100000001b3L

    mul-long v9, v9, v14

    .line 4113
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_e

    .line 4114
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4115
    return-wide v2

    .line 4113
    :cond_e
    move v5, v13

    goto/16 :goto_1
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 2
    .param p1, "strict"    # Z

    .line 4167
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(ZI)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(ZI)Z
    .locals 56
    .param p1, "strict"    # Z
    .param p2, "rest"    # I

    .line 4171
    move-object/from16 v9, p0

    move/from16 v10, p2

    const/16 v0, 0x2f

    const/16 v11, 0xd

    const/16 v12, 0x39

    const/4 v13, 0x2

    const/4 v14, 0x5

    const/4 v15, 0x1

    const/16 v8, 0x30

    if-nez p1, :cond_4

    if-le v10, v11, :cond_4

    .line 4172
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 4173
    .local v1, "c0":C
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v15

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 4174
    .local v2, "c1":C
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v13

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    .line 4175
    .local v3, "c2":C
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    .line 4176
    .local v4, "c3":C
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    .line 4177
    .local v5, "c4":C
    iget v6, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v6, v14

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    .line 4179
    .local v6, "c5":C
    iget v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v11, v10

    sub-int/2addr v11, v15

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v11

    .line 4180
    .local v11, "c_r0":C
    iget v15, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v15, v10

    sub-int/2addr v15, v13

    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v15

    .line 4181
    .local v15, "c_r1":C
    if-ne v1, v0, :cond_4

    const/16 v13, 0x44

    if-ne v2, v13, :cond_4

    const/16 v13, 0x61

    if-ne v3, v13, :cond_4

    const/16 v13, 0x74

    if-ne v4, v13, :cond_4

    const/16 v13, 0x65

    if-ne v5, v13, :cond_4

    const/16 v13, 0x28

    if-ne v6, v13, :cond_4

    if-ne v11, v0, :cond_4

    const/16 v13, 0x29

    if-ne v15, v13, :cond_4

    .line 4183
    const/4 v0, -0x1

    .line 4184
    .local v0, "plusIndex":I
    const/4 v13, 0x6

    .local v13, "i":I
    :goto_0
    if-ge v13, v10, :cond_2

    .line 4185
    iget v14, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v14, v13

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v14

    .line 4186
    .local v14, "c":C
    const/16 v7, 0x2b

    if-ne v14, v7, :cond_0

    .line 4187
    move v0, v13

    goto :goto_1

    .line 4188
    :cond_0
    if-lt v14, v8, :cond_2

    if-le v14, v12, :cond_1

    .line 4189
    goto :goto_2

    .line 4184
    .end local v14    # "c":C
    :cond_1
    :goto_1
    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x5

    goto :goto_0

    .line 4192
    .end local v13    # "i":I
    :cond_2
    :goto_2
    const/4 v7, -0x1

    if-ne v0, v7, :cond_3

    .line 4193
    const/4 v7, 0x0

    return v7

    .line 4195
    :cond_3
    iget v7, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x6

    .line 4196
    .local v7, "offset":I
    sub-int v8, v0, v7

    invoke-direct {v9, v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v8

    .line 4197
    .local v8, "numberText":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 4199
    .local v12, "millis":J
    iget-object v14, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    move/from16 v16, v0

    .end local v0    # "plusIndex":I
    .local v16, "plusIndex":I
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-static {v14, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 4200
    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4202
    const/4 v0, 0x5

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4203
    const/4 v0, 0x1

    return v0

    .line 4208
    .end local v1    # "c0":C
    .end local v2    # "c1":C
    .end local v3    # "c2":C
    .end local v4    # "c3":C
    .end local v5    # "c4":C
    .end local v6    # "c5":C
    .end local v7    # "offset":I
    .end local v8    # "numberText":Ljava/lang/String;
    .end local v11    # "c_r0":C
    .end local v12    # "millis":J
    .end local v15    # "c_r1":C
    .end local v16    # "plusIndex":I
    :cond_4
    const/16 v11, 0x54

    const/16 v13, 0x10

    const/16 v14, 0x8

    const/16 v6, 0x9

    const/16 v5, 0xe

    const/16 v4, 0x2d

    if-eq v10, v14, :cond_42

    if-eq v10, v5, :cond_42

    if-ne v10, v13, :cond_6

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, 0xa

    .line 4210
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    move v2, v1

    .local v2, "c10":C
    if-eq v1, v11, :cond_5

    const/16 v1, 0x20

    if-eq v2, v1, :cond_5

    goto :goto_3

    :cond_5
    const/16 v12, 0x10

    const/16 v13, 0x2d

    const/16 v14, 0x3a

    const/16 v15, 0x30

    const/16 v33, 0x9

    goto/16 :goto_17

    .end local v2    # "c10":C
    :cond_6
    :goto_3
    const/16 v1, 0x11

    if-ne v10, v1, :cond_7

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, 0x6

    .line 4211
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_7

    const/16 v12, 0x10

    const/16 v13, 0x2d

    const/16 v14, 0x3a

    const/16 v15, 0x30

    const/16 v33, 0x9

    goto/16 :goto_17

    .line 4327
    :cond_7
    if-ge v10, v6, :cond_8

    .line 4328
    const/4 v0, 0x0

    return v0

    .line 4331
    :cond_8
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    .line 4332
    .local v13, "c0":C
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v20

    .line 4333
    .local v20, "c1":C
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    .line 4334
    .restart local v3    # "c2":C
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v21

    .line 4335
    .local v21, "c3":C
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 4336
    .local v2, "c4":C
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v18, 0x5

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 4337
    .local v1, "c5":C
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    .line 4338
    .local v5, "c6":C
    iget v7, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x7

    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    .line 4339
    .local v7, "c7":C
    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v14

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v8

    .line 4340
    .local v8, "c8":C
    iget v12, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v12, v6

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    .line 4342
    .local v12, "c9":C
    const/16 v26, 0xa

    .line 4344
    .local v26, "date_len":I
    const v14, 0xc77c

    const/16 v15, 0x65e5

    if-ne v2, v4, :cond_9

    if-eq v7, v4, :cond_a

    :cond_9
    if-ne v2, v0, :cond_b

    if-ne v7, v0, :cond_b

    .line 4347
    :cond_a
    move v0, v13

    .line 4348
    .local v0, "y0":C
    move/from16 v28, v20

    .line 4349
    .local v28, "y1":C
    move/from16 v29, v3

    .line 4350
    .local v29, "y2":C
    move/from16 v30, v21

    .line 4351
    .local v30, "y3":C
    move/from16 v31, v1

    .line 4352
    .local v31, "M0":C
    move/from16 v32, v5

    .line 4353
    .local v32, "M1":C
    move/from16 v33, v8

    .line 4354
    .local v33, "d0":C
    move/from16 v34, v12

    move/from16 v43, v33

    move/from16 v44, v34

    move/from16 v34, v32

    move/from16 v32, v31

    move/from16 v31, v30

    move/from16 v30, v29

    move/from16 v29, v28

    move/from16 v28, v26

    move/from16 v26, v0

    .local v34, "d1":C
    goto/16 :goto_b

    .line 4355
    .end local v0    # "y0":C
    .end local v28    # "y1":C
    .end local v29    # "y2":C
    .end local v30    # "y3":C
    .end local v31    # "M0":C
    .end local v32    # "M1":C
    .end local v33    # "d0":C
    .end local v34    # "d1":C
    :cond_b
    if-ne v2, v4, :cond_d

    if-ne v5, v4, :cond_d

    .line 4357
    move v0, v13

    .line 4358
    .restart local v0    # "y0":C
    move/from16 v28, v20

    .line 4359
    .restart local v28    # "y1":C
    move/from16 v29, v3

    .line 4360
    .restart local v29    # "y2":C
    move/from16 v30, v21

    .line 4361
    .restart local v30    # "y3":C
    const/16 v31, 0x30

    .line 4362
    .restart local v31    # "M0":C
    move/from16 v32, v1

    .line 4364
    .restart local v32    # "M1":C
    const/16 v6, 0x20

    if-ne v8, v6, :cond_c

    .line 4365
    const/16 v6, 0x30

    .line 4366
    .local v6, "d0":C
    move/from16 v34, v7

    .line 4367
    .restart local v34    # "d1":C
    const/16 v26, 0x8

    move/from16 v43, v6

    move/from16 v44, v34

    move/from16 v34, v32

    move/from16 v32, v31

    move/from16 v31, v30

    move/from16 v30, v29

    move/from16 v29, v28

    move/from16 v28, v26

    move/from16 v26, v0

    goto/16 :goto_b

    .line 4369
    .end local v6    # "d0":C
    .end local v34    # "d1":C
    :cond_c
    move v6, v7

    .line 4370
    .restart local v6    # "d0":C
    move/from16 v34, v8

    .line 4371
    .restart local v34    # "d1":C
    const/16 v26, 0x9

    move/from16 v43, v6

    move/from16 v44, v34

    move/from16 v34, v32

    move/from16 v32, v31

    move/from16 v31, v30

    move/from16 v30, v29

    move/from16 v29, v28

    move/from16 v28, v26

    move/from16 v26, v0

    goto/16 :goto_b

    .line 4373
    .end local v0    # "y0":C
    .end local v6    # "d0":C
    .end local v28    # "y1":C
    .end local v29    # "y2":C
    .end local v30    # "y3":C
    .end local v31    # "M0":C
    .end local v32    # "M1":C
    .end local v34    # "d1":C
    :cond_d
    const/16 v0, 0x2e

    if-ne v3, v0, :cond_e

    const/16 v0, 0x2e

    if-eq v1, v0, :cond_f

    :cond_e
    if-ne v3, v4, :cond_10

    if-ne v1, v4, :cond_10

    .line 4376
    :cond_f
    move v0, v13

    .line 4377
    .local v0, "d0":C
    move/from16 v34, v20

    .line 4378
    .restart local v34    # "d1":C
    move/from16 v31, v21

    .line 4379
    .restart local v31    # "M0":C
    move/from16 v32, v2

    .line 4380
    .restart local v32    # "M1":C
    move v6, v5

    .line 4381
    .local v6, "y0":C
    move/from16 v28, v7

    .line 4382
    .restart local v28    # "y1":C
    move/from16 v29, v8

    .line 4383
    .restart local v29    # "y2":C
    move/from16 v30, v12

    move/from16 v43, v0

    move/from16 v44, v34

    move/from16 v34, v32

    move/from16 v32, v31

    move/from16 v31, v30

    move/from16 v30, v29

    move/from16 v29, v28

    move/from16 v28, v26

    move/from16 v26, v6

    .restart local v30    # "y3":C
    goto/16 :goto_b

    .line 4385
    .end local v0    # "d0":C
    .end local v6    # "y0":C
    .end local v28    # "y1":C
    .end local v29    # "y2":C
    .end local v30    # "y3":C
    .end local v31    # "M0":C
    .end local v32    # "M1":C
    .end local v34    # "d1":C
    :cond_10
    const/16 v0, 0x5e74

    if-eq v2, v0, :cond_12

    const v0, 0xb144

    if-ne v2, v0, :cond_11

    goto :goto_4

    .line 4420
    :cond_11
    const/4 v0, 0x0

    return v0

    .line 4386
    :cond_12
    :goto_4
    move v0, v13

    .line 4387
    .local v0, "y0":C
    move/from16 v28, v20

    .line 4388
    .restart local v28    # "y1":C
    move/from16 v29, v3

    .line 4389
    .restart local v29    # "y2":C
    move/from16 v30, v21

    .line 4391
    .restart local v30    # "y3":C
    const/16 v6, 0x6708

    if-eq v7, v6, :cond_1a

    const v6, 0xc6d4

    if-ne v7, v6, :cond_13

    goto :goto_8

    .line 4404
    :cond_13
    const/16 v6, 0x6708

    if-eq v5, v6, :cond_15

    const v6, 0xc6d4

    if-ne v5, v6, :cond_14

    goto :goto_5

    .line 4417
    :cond_14
    const/4 v4, 0x0

    return v4

    .line 4405
    :cond_15
    :goto_5
    const/16 v31, 0x30

    .line 4406
    .restart local v31    # "M0":C
    move/from16 v32, v1

    .line 4407
    .restart local v32    # "M1":C
    if-eq v8, v15, :cond_19

    if-ne v8, v14, :cond_16

    goto :goto_7

    .line 4410
    :cond_16
    if-eq v12, v15, :cond_18

    if-ne v12, v14, :cond_17

    goto :goto_6

    .line 4414
    :cond_17
    const/4 v4, 0x0

    return v4

    .line 4411
    :cond_18
    :goto_6
    move v6, v7

    .line 4412
    .local v6, "d0":C
    move/from16 v34, v8

    move/from16 v43, v6

    move/from16 v44, v34

    move/from16 v34, v32

    move/from16 v32, v31

    move/from16 v31, v30

    move/from16 v30, v29

    move/from16 v29, v28

    move/from16 v28, v26

    move/from16 v26, v0

    .restart local v34    # "d1":C
    goto/16 :goto_b

    .line 4408
    .end local v6    # "d0":C
    .end local v34    # "d1":C
    :cond_19
    :goto_7
    const/16 v6, 0x30

    .line 4409
    .restart local v6    # "d0":C
    move/from16 v34, v7

    move/from16 v43, v6

    move/from16 v44, v34

    move/from16 v34, v32

    move/from16 v32, v31

    move/from16 v31, v30

    move/from16 v30, v29

    move/from16 v29, v28

    move/from16 v28, v26

    move/from16 v26, v0

    .restart local v34    # "d1":C
    goto :goto_b

    .line 4392
    .end local v6    # "d0":C
    .end local v31    # "M0":C
    .end local v32    # "M1":C
    .end local v34    # "d1":C
    :cond_1a
    :goto_8
    move/from16 v31, v1

    .line 4393
    .restart local v31    # "M0":C
    move/from16 v32, v5

    .line 4394
    .restart local v32    # "M1":C
    if-eq v12, v15, :cond_1e

    if-ne v12, v14, :cond_1b

    goto :goto_a

    .line 4397
    :cond_1b
    iget v6, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v6, 0xa

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    if-eq v6, v15, :cond_1d

    iget v6, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v6, 0xa

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    if-ne v6, v14, :cond_1c

    goto :goto_9

    .line 4402
    :cond_1c
    const/4 v4, 0x0

    return v4

    .line 4398
    :cond_1d
    :goto_9
    move v6, v8

    .line 4399
    .restart local v6    # "d0":C
    move/from16 v34, v12

    .line 4400
    .restart local v34    # "d1":C
    const/16 v26, 0xb

    move/from16 v43, v6

    move/from16 v44, v34

    move/from16 v34, v32

    move/from16 v32, v31

    move/from16 v31, v30

    move/from16 v30, v29

    move/from16 v29, v28

    move/from16 v28, v26

    move/from16 v26, v0

    goto :goto_b

    .line 4395
    .end local v6    # "d0":C
    .end local v34    # "d1":C
    :cond_1e
    :goto_a
    const/16 v6, 0x30

    .line 4396
    .restart local v6    # "d0":C
    move/from16 v34, v8

    move/from16 v43, v6

    move/from16 v44, v34

    move/from16 v34, v32

    move/from16 v32, v31

    move/from16 v31, v30

    move/from16 v30, v29

    move/from16 v29, v28

    move/from16 v28, v26

    move/from16 v26, v0

    .line 4424
    .end local v0    # "y0":C
    .end local v6    # "d0":C
    .local v26, "y0":C
    .local v28, "date_len":I
    .local v29, "y1":C
    .local v30, "y2":C
    .local v31, "y3":C
    .local v32, "M0":C
    .local v34, "M1":C
    .local v43, "d0":C
    .local v44, "d1":C
    :goto_b
    move/from16 v35, v26

    move/from16 v36, v29

    move/from16 v37, v30

    move/from16 v38, v31

    move/from16 v39, v32

    move/from16 v40, v34

    move/from16 v41, v43

    move/from16 v42, v44

    invoke-static/range {v35 .. v42}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 4425
    const/16 v19, 0x0

    return v19

    .line 4428
    :cond_1f
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v35, v1

    .end local v1    # "c5":C
    .local v35, "c5":C
    move/from16 v1, v26

    move/from16 v36, v2

    .end local v2    # "c4":C
    .local v36, "c4":C
    move/from16 v2, v29

    move/from16 v37, v3

    .end local v3    # "c2":C
    .local v37, "c2":C
    move/from16 v3, v30

    const/16 v6, 0x2d

    move/from16 v4, v31

    move/from16 v22, v5

    move/from16 v38, v13

    const/16 v13, 0xe

    .end local v5    # "c6":C
    .end local v13    # "c0":C
    .local v22, "c6":C
    .local v38, "c0":C
    move/from16 v5, v32

    const/16 v13, 0x2d

    const/16 v33, 0x9

    move/from16 v6, v34

    move/from16 v19, v7

    .end local v7    # "c7":C
    .local v19, "c7":C
    move/from16 v7, v43

    move/from16 v23, v8

    .end local v8    # "c8":C
    .local v23, "c8":C
    move/from16 v8, v44

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->setCalendar(CCCCCCCC)V

    .line 4430
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v0, v0, v28

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    .line 4431
    .local v7, "t":C
    if-eq v7, v11, :cond_28

    const/16 v0, 0x20

    if-ne v7, v0, :cond_20

    if-nez p1, :cond_20

    const/16 v8, 0x30

    const/4 v14, 0x0

    const/16 v15, 0x3a

    goto/16 :goto_f

    .line 4435
    :cond_20
    const/16 v0, 0x22

    if-eq v7, v0, :cond_27

    const/16 v0, 0x1a

    if-eq v7, v0, :cond_27

    if-eq v7, v15, :cond_27

    if-ne v7, v14, :cond_21

    const/4 v14, 0x0

    goto :goto_e

    .line 4445
    :cond_21
    const/16 v0, 0x2b

    if-eq v7, v0, :cond_23

    if-ne v7, v13, :cond_22

    const/4 v14, 0x0

    goto :goto_c

    .line 4460
    :cond_22
    const/4 v14, 0x0

    return v14

    .line 4445
    :cond_23
    const/4 v14, 0x0

    .line 4446
    :goto_c
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    add-int/lit8 v1, v28, 0x6

    if-ne v0, v1, :cond_26

    .line 4447
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v0, v0, v28

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v15, 0x3a

    if-ne v0, v15, :cond_25

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v0, v0, v28

    add-int/lit8 v0, v0, 0x4

    .line 4448
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v8, 0x30

    if-ne v0, v8, :cond_25

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v0, v0, v28

    const/4 v1, 0x5

    add-int/2addr v0, v1

    .line 4449
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-eq v0, v8, :cond_24

    goto :goto_d

    .line 4453
    :cond_24
    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x30

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTime(CCCCCC)V

    .line 4454
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v14}, Ljava/util/Calendar;->set(II)V

    .line 4455
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v0, v0, v28

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v2, v2, v28

    const/4 v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    invoke-virtual {v9, v7, v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTimeZone(CCC)V

    .line 4456
    return v1

    .line 4450
    :cond_25
    :goto_d
    return v14

    .line 4458
    :cond_26
    return v14

    .line 4435
    :cond_27
    const/4 v14, 0x0

    .line 4436
    :goto_e
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v14}, Ljava/util/Calendar;->set(II)V

    .line 4437
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v14}, Ljava/util/Calendar;->set(II)V

    .line 4438
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v14}, Ljava/util/Calendar;->set(II)V

    .line 4439
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v14}, Ljava/util/Calendar;->set(II)V

    .line 4441
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v0, v0, v28

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 4443
    const/4 v0, 0x5

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4444
    const/4 v0, 0x1

    return v0

    .line 4431
    :cond_28
    const/16 v8, 0x30

    const/4 v14, 0x0

    const/16 v15, 0x3a

    .line 4432
    :goto_f
    add-int/lit8 v0, v28, 0x9

    if-ge v10, v0, :cond_29

    .line 4433
    return v14

    .line 4463
    :cond_29
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v0, v0, v28

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-eq v0, v15, :cond_2a

    .line 4464
    return v14

    .line 4466
    :cond_2a
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v0, v0, v28

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-eq v0, v15, :cond_2b

    .line 4467
    return v14

    .line 4470
    :cond_2b
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v0, v0, v28

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v11

    .line 4471
    .local v11, "h0":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v0, v0, v28

    const/4 v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v16

    .line 4472
    .local v16, "h1":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v0, v0, v28

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v24

    .line 4473
    .local v24, "m0":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v0, v0, v28

    const/4 v1, 0x5

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v40

    .line 4474
    .local v40, "m1":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v0, v0, v28

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v41

    .line 4475
    .local v41, "s0":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v0, v0, v28

    const/16 v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v27

    .line 4477
    .local v27, "s1":C
    move/from16 v45, v11

    move/from16 v46, v16

    move/from16 v47, v24

    move/from16 v48, v40

    move/from16 v49, v41

    move/from16 v50, v27

    invoke-static/range {v45 .. v50}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 4478
    return v14

    .line 4481
    :cond_2c
    move-object/from16 v0, p0

    move v1, v11

    move/from16 v2, v16

    move/from16 v3, v24

    move/from16 v4, v40

    move/from16 v5, v41

    move/from16 v6, v27

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTime(CCCCCC)V

    .line 4483
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v0, v0, v28

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 4484
    .local v0, "dot":C
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_40

    .line 4485
    add-int/lit8 v1, v28, 0xb

    if-ge v10, v1, :cond_2d

    .line 4486
    return v14

    .line 4508
    :cond_2d
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v1, v1, v28

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 4509
    .local v1, "S0":C
    if-lt v1, v8, :cond_3f

    const/16 v2, 0x39

    if-le v1, v2, :cond_2e

    const/4 v8, 0x0

    goto/16 :goto_16

    .line 4512
    :cond_2e
    add-int/lit8 v2, v1, -0x30

    .line 4513
    .local v2, "millis":I
    const/4 v3, 0x1

    .line 4515
    .local v3, "millisLen":I
    add-int/lit8 v4, v28, 0xb

    if-le v10, v4, :cond_2f

    .line 4516
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v4, v4, v28

    const/16 v5, 0xb

    add-int/2addr v4, v5

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    .line 4517
    .local v4, "S1":C
    if-lt v4, v8, :cond_2f

    const/16 v5, 0x39

    if-gt v4, v5, :cond_2f

    .line 4518
    mul-int/lit8 v5, v2, 0xa

    add-int/lit8 v6, v4, -0x30

    add-int v2, v5, v6

    .line 4519
    const/4 v3, 0x2

    .line 4523
    .end local v4    # "S1":C
    :cond_2f
    const/4 v4, 0x2

    if-ne v3, v4, :cond_30

    .line 4524
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v4, v4, v28

    add-int/lit8 v4, v4, 0xc

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    .line 4525
    .local v4, "S2":C
    if-lt v4, v8, :cond_30

    const/16 v5, 0x39

    if-gt v4, v5, :cond_30

    .line 4526
    mul-int/lit8 v5, v2, 0xa

    add-int/lit8 v6, v4, -0x30

    add-int v2, v5, v6

    .line 4527
    const/4 v3, 0x3

    .line 4531
    .end local v4    # "S2":C
    :cond_30
    iget-object v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xe

    invoke-virtual {v4, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 4533
    const/4 v4, 0x0

    .line 4534
    .local v4, "timzeZoneLength":I
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v5, v5, v28

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v3

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    .line 4535
    .local v5, "timeZoneFlag":C
    const/16 v6, 0x2b

    if-eq v5, v6, :cond_33

    if-ne v5, v13, :cond_31

    goto :goto_11

    .line 4570
    :cond_31
    const/16 v6, 0x5a

    if-ne v5, v6, :cond_32

    .line 4571
    const/4 v4, 0x1

    .line 4572
    iget-object v6, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    if-eqz v6, :cond_3b

    .line 4573
    invoke-static {v14}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v6

    .line 4574
    .local v6, "timeZoneIDs":[Ljava/lang/String;
    array-length v8, v6

    if-lez v8, :cond_3b

    .line 4575
    aget-object v8, v6, v14

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 4576
    .local v8, "timeZone":Ljava/util/TimeZone;
    iget-object v13, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v13, v8}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_13

    .line 4570
    .end local v6    # "timeZoneIDs":[Ljava/lang/String;
    .end local v8    # "timeZone":Ljava/util/TimeZone;
    :cond_32
    :goto_10
    goto/16 :goto_13

    .line 4536
    :cond_33
    :goto_11
    iget v6, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v6, v6, v28

    add-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v3

    const/4 v13, 0x1

    add-int/2addr v6, v13

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    .line 4537
    .local v6, "t0":C
    if-lt v6, v8, :cond_3e

    const/16 v13, 0x31

    if-le v6, v13, :cond_34

    const/4 v8, 0x0

    goto/16 :goto_15

    .line 4541
    :cond_34
    iget v13, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v13, v13, v28

    add-int/lit8 v13, v13, 0xa

    add-int/2addr v13, v3

    const/16 v17, 0x2

    add-int/lit8 v13, v13, 0x2

    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    .line 4542
    .local v13, "t1":C
    if-lt v13, v8, :cond_3d

    const/16 v14, 0x39

    if-le v13, v14, :cond_35

    goto/16 :goto_14

    .line 4546
    :cond_35
    iget v14, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v14, v14, v28

    add-int/lit8 v14, v14, 0xa

    add-int/2addr v14, v3

    add-int/lit8 v14, v14, 0x3

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v14

    .line 4547
    .local v14, "t2":C
    if-ne v14, v15, :cond_38

    .line 4548
    iget v15, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v15, v15, v28

    add-int/lit8 v15, v15, 0xa

    add-int/2addr v15, v3

    add-int/lit8 v15, v15, 0x4

    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v15

    .line 4549
    .local v15, "t3":C
    if-eq v15, v8, :cond_36

    .line 4550
    const/16 v17, 0x0

    return v17

    .line 4553
    :cond_36
    const/16 v17, 0x0

    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v8, v8, v28

    add-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v3

    const/16 v18, 0x5

    add-int/lit8 v8, v8, 0x5

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v8

    .line 4554
    .local v8, "t4":C
    move/from16 v25, v15

    const/16 v15, 0x30

    .end local v15    # "t3":C
    .local v25, "t3":C
    if-eq v8, v15, :cond_37

    .line 4555
    return v17

    .line 4557
    :cond_37
    const/4 v4, 0x6

    .line 4558
    .end local v8    # "t4":C
    .end local v25    # "t3":C
    goto :goto_12

    :cond_38
    const/16 v15, 0x30

    if-ne v14, v15, :cond_3a

    .line 4559
    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v8, v8, v28

    add-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v8

    .line 4560
    .local v8, "t3":C
    if-eq v8, v15, :cond_39

    .line 4561
    const/4 v15, 0x0

    return v15

    .line 4563
    :cond_39
    const/4 v4, 0x5

    .line 4564
    .end local v8    # "t3":C
    goto :goto_12

    .line 4565
    :cond_3a
    const/4 v4, 0x3

    .line 4568
    :goto_12
    invoke-virtual {v9, v5, v6, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTimeZone(CCC)V

    .end local v6    # "t0":C
    .end local v13    # "t1":C
    .end local v14    # "t2":C
    goto/16 :goto_10

    .line 4581
    :cond_3b
    :goto_13
    iget v6, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v28, 0xa

    add-int/2addr v8, v3

    add-int/2addr v8, v4

    add-int/2addr v6, v8

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    .line 4582
    .local v6, "end":C
    const/16 v8, 0x1a

    if-eq v6, v8, :cond_3c

    const/16 v8, 0x22

    if-eq v6, v8, :cond_3c

    .line 4583
    const/4 v8, 0x0

    return v8

    .line 4585
    :cond_3c
    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v28, 0xa

    add-int/2addr v13, v3

    add-int/2addr v13, v4

    add-int/2addr v8, v13

    iput v8, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v8

    iput-char v8, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 4587
    const/4 v8, 0x5

    iput v8, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4588
    const/4 v8, 0x1

    return v8

    .line 4543
    .local v6, "t0":C
    .restart local v13    # "t1":C
    :cond_3d
    :goto_14
    const/4 v8, 0x0

    return v8

    .line 4537
    .end local v13    # "t1":C
    :cond_3e
    const/4 v8, 0x0

    .line 4538
    :goto_15
    return v8

    .line 4509
    .end local v2    # "millis":I
    .end local v3    # "millisLen":I
    .end local v4    # "timzeZoneLength":I
    .end local v5    # "timeZoneFlag":C
    .end local v6    # "t0":C
    :cond_3f
    const/4 v8, 0x0

    .line 4510
    :goto_16
    return v8

    .line 4489
    .end local v1    # "S0":C
    :cond_40
    const/4 v8, 0x0

    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v8}, Ljava/util/Calendar;->set(II)V

    .line 4491
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v28, 0x9

    add-int/2addr v1, v2

    iput v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    iput-char v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 4493
    const/4 v1, 0x5

    iput v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4495
    const/16 v1, 0x5a

    if-ne v0, v1, :cond_41

    .line 4497
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-eqz v1, :cond_41

    .line 4498
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v2

    .line 4499
    .local v2, "timeZoneIDs":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_41

    .line 4500
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 4501
    .local v1, "timeZone":Ljava/util/TimeZone;
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4505
    .end local v1    # "timeZone":Ljava/util/TimeZone;
    .end local v2    # "timeZoneIDs":[Ljava/lang/String;
    :cond_41
    const/4 v1, 0x1

    return v1

    .line 4208
    .end local v0    # "dot":C
    .end local v7    # "t":C
    .end local v11    # "h0":C
    .end local v12    # "c9":C
    .end local v16    # "h1":C
    .end local v19    # "c7":C
    .end local v20    # "c1":C
    .end local v21    # "c3":C
    .end local v22    # "c6":C
    .end local v23    # "c8":C
    .end local v24    # "m0":C
    .end local v26    # "y0":C
    .end local v27    # "s1":C
    .end local v28    # "date_len":I
    .end local v29    # "y1":C
    .end local v30    # "y2":C
    .end local v31    # "y3":C
    .end local v32    # "M0":C
    .end local v34    # "M1":C
    .end local v35    # "c5":C
    .end local v36    # "c4":C
    .end local v37    # "c2":C
    .end local v38    # "c0":C
    .end local v40    # "m1":C
    .end local v41    # "s0":C
    .end local v43    # "d0":C
    .end local v44    # "d1":C
    :cond_42
    const/16 v12, 0x10

    const/16 v13, 0x2d

    const/16 v14, 0x3a

    const/16 v15, 0x30

    const/16 v33, 0x9

    .line 4212
    :goto_17
    if-eqz p1, :cond_43

    .line 4213
    const/4 v0, 0x0

    return v0

    .line 4218
    :cond_43
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v19

    .line 4219
    .local v19, "c0":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v20

    .line 4220
    .restart local v20    # "c1":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v17

    .line 4221
    .local v17, "c2":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v21

    .line 4222
    .restart local v21    # "c3":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v8

    .line 4223
    .local v8, "c4":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v1, 0x5

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v22

    .line 4224
    .local v22, "c5":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v23

    .line 4225
    .local v23, "c6":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    .line 4226
    .local v7, "c7":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v24

    .line 4228
    .local v24, "c8":C
    if-ne v8, v13, :cond_44

    if-ne v7, v13, :cond_44

    const/4 v0, 0x1

    goto :goto_18

    :cond_44
    const/4 v0, 0x0

    :goto_18
    move v13, v0

    .line 4229
    .local v13, "c_47":Z
    if-eqz v13, :cond_45

    if-ne v10, v12, :cond_45

    const/4 v0, 0x1

    goto :goto_19

    :cond_45
    const/4 v0, 0x0

    :goto_19
    move/from16 v26, v0

    .line 4230
    .local v26, "sperate16":Z
    if-eqz v13, :cond_46

    const/16 v0, 0x11

    if-ne v10, v0, :cond_46

    const/4 v0, 0x1

    goto :goto_1a

    :cond_46
    const/4 v0, 0x0

    :goto_1a
    move/from16 v28, v0

    .line 4231
    .local v28, "sperate17":Z
    if-nez v28, :cond_48

    if-eqz v26, :cond_47

    goto :goto_1b

    .line 4241
    :cond_47
    move/from16 v0, v19

    .line 4242
    .local v0, "y0":C
    move/from16 v1, v20

    .line 4243
    .local v1, "y1":C
    move/from16 v2, v17

    .line 4244
    .local v2, "y2":C
    move/from16 v3, v21

    .line 4245
    .local v3, "y3":C
    move v4, v8

    .line 4246
    .local v4, "M0":C
    move/from16 v5, v22

    .line 4247
    .local v5, "M1":C
    move/from16 v6, v23

    .line 4248
    .local v6, "d0":C
    move/from16 v29, v7

    move v15, v0

    move/from16 v30, v2

    move/from16 v31, v3

    move/from16 v32, v4

    move/from16 v34, v5

    move/from16 v35, v6

    move/from16 v36, v29

    move/from16 v29, v1

    .local v29, "d1":C
    goto :goto_1c

    .line 4232
    .end local v0    # "y0":C
    .end local v1    # "y1":C
    .end local v2    # "y2":C
    .end local v3    # "y3":C
    .end local v4    # "M0":C
    .end local v5    # "M1":C
    .end local v6    # "d0":C
    .end local v29    # "d1":C
    :cond_48
    :goto_1b
    move/from16 v0, v19

    .line 4233
    .restart local v0    # "y0":C
    move/from16 v1, v20

    .line 4234
    .restart local v1    # "y1":C
    move/from16 v2, v17

    .line 4235
    .restart local v2    # "y2":C
    move/from16 v3, v21

    .line 4236
    .restart local v3    # "y3":C
    move/from16 v4, v22

    .line 4237
    .restart local v4    # "M0":C
    move/from16 v5, v23

    .line 4238
    .restart local v5    # "M1":C
    move/from16 v6, v24

    .line 4239
    .restart local v6    # "d0":C
    iget v15, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v15, v15, 0x9

    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v29

    move v15, v0

    move/from16 v30, v2

    move/from16 v31, v3

    move/from16 v32, v4

    move/from16 v34, v5

    move/from16 v35, v6

    move/from16 v36, v29

    move/from16 v29, v1

    .line 4252
    .end local v0    # "y0":C
    .end local v1    # "y1":C
    .end local v2    # "y2":C
    .end local v3    # "y3":C
    .end local v4    # "M0":C
    .end local v5    # "M1":C
    .end local v6    # "d0":C
    .local v15, "y0":C
    .local v29, "y1":C
    .restart local v30    # "y2":C
    .restart local v31    # "y3":C
    .restart local v32    # "M0":C
    .restart local v34    # "M1":C
    .local v35, "d0":C
    .local v36, "d1":C
    :goto_1c
    move/from16 v48, v15

    move/from16 v49, v29

    move/from16 v50, v30

    move/from16 v51, v31

    move/from16 v52, v32

    move/from16 v53, v34

    move/from16 v54, v35

    move/from16 v55, v36

    invoke-static/range {v48 .. v55}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_49

    .line 4253
    const/4 v0, 0x0

    return v0

    .line 4256
    :cond_49
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    move/from16 v5, v32

    move/from16 v6, v34

    move/from16 v37, v7

    .end local v7    # "c7":C
    .local v37, "c7":C
    move/from16 v7, v35

    move/from16 v38, v8

    .end local v8    # "c4":C
    .local v38, "c4":C
    move/from16 v8, v36

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->setCalendar(CCCCCCCC)V

    .line 4259
    const/16 v0, 0x8

    if-eq v10, v0, :cond_56

    .line 4260
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 4261
    .local v0, "c9":C
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 4262
    .local v1, "c10":C
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v3, 0xb

    add-int/2addr v2, v3

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 4263
    .local v2, "c11":C
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    .line 4264
    .local v3, "c12":C
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v5, 0xd

    add-int/2addr v4, v5

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    .line 4268
    .local v4, "c13":C
    if-eqz v28, :cond_4a

    if-ne v1, v11, :cond_4a

    if-ne v4, v14, :cond_4a

    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, v12

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_4c

    :cond_4a
    if-eqz v26, :cond_4d

    const/16 v5, 0x20

    if-eq v1, v5, :cond_4b

    if-ne v1, v11, :cond_4d

    :cond_4b
    if-ne v4, v14, :cond_4d

    .line 4270
    :cond_4c
    move v5, v2

    .line 4271
    .local v5, "h0":C
    move v6, v3

    .line 4272
    .local v6, "h1":C
    iget v7, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v8, 0xe

    add-int/2addr v7, v8

    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    .line 4273
    .local v7, "m0":C
    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0xf

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v8

    .line 4274
    .local v8, "m1":C
    const/16 v11, 0x30

    .line 4275
    .local v11, "s0":C
    const/16 v14, 0x30

    .local v14, "s1":C
    goto :goto_1d

    .line 4277
    .end local v5    # "h0":C
    .end local v6    # "h1":C
    .end local v7    # "m0":C
    .end local v8    # "m1":C
    .end local v11    # "s0":C
    .end local v14    # "s1":C
    :cond_4d
    move/from16 v5, v24

    .line 4278
    .restart local v5    # "h0":C
    move v6, v0

    .line 4279
    .restart local v6    # "h1":C
    move v7, v1

    .line 4280
    .restart local v7    # "m0":C
    move v8, v2

    .line 4281
    .restart local v8    # "m1":C
    move v11, v3

    .line 4282
    .restart local v11    # "s0":C
    move v14, v4

    .line 4285
    .restart local v14    # "s1":C
    :goto_1d
    move/from16 v46, v5

    move/from16 v47, v6

    move/from16 v48, v7

    move/from16 v49, v8

    move/from16 v50, v11

    move/from16 v51, v14

    invoke-static/range {v46 .. v51}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkTime(CCCCCC)Z

    move-result v27

    if-nez v27, :cond_4e

    .line 4286
    const/4 v12, 0x0

    return v12

    .line 4289
    :cond_4e
    const/16 v12, 0x11

    if-ne v10, v12, :cond_55

    if-nez v28, :cond_55

    .line 4290
    iget v12, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v33, 0xe

    add-int/lit8 v12, v12, 0xe

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    .line 4291
    .local v12, "S0":C
    move/from16 v33, v0

    .end local v0    # "c9":C
    .local v33, "c9":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 4292
    .local v0, "S1":C
    move/from16 v40, v1

    .end local v1    # "c10":C
    .local v40, "c10":C
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v27, 0x10

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 4293
    .local v1, "S2":C
    move/from16 v27, v2

    const/16 v2, 0x30

    .end local v2    # "c11":C
    .local v27, "c11":C
    if-lt v12, v2, :cond_54

    const/16 v2, 0x39

    if-le v12, v2, :cond_4f

    const/4 v2, 0x0

    goto :goto_20

    .line 4296
    :cond_4f
    const/16 v2, 0x30

    if-lt v0, v2, :cond_53

    const/16 v2, 0x39

    if-le v0, v2, :cond_50

    const/4 v2, 0x0

    goto :goto_1f

    .line 4299
    :cond_50
    const/16 v2, 0x30

    if-lt v1, v2, :cond_52

    const/16 v2, 0x39

    if-le v1, v2, :cond_51

    goto :goto_1e

    .line 4303
    :cond_51
    add-int/lit8 v2, v12, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/lit8 v25, v0, -0x30

    mul-int/lit8 v25, v25, 0xa

    add-int v2, v2, v25

    add-int/lit8 v25, v1, -0x30

    add-int v2, v2, v25

    .line 4304
    .end local v0    # "S1":C
    .end local v1    # "S2":C
    .end local v12    # "S0":C
    .local v2, "millis":I
    goto :goto_21

    .line 4300
    .end local v2    # "millis":I
    .restart local v0    # "S1":C
    .restart local v1    # "S2":C
    .restart local v12    # "S0":C
    :cond_52
    :goto_1e
    const/4 v2, 0x0

    return v2

    .line 4296
    :cond_53
    const/4 v2, 0x0

    .line 4297
    :goto_1f
    return v2

    .line 4293
    :cond_54
    const/4 v2, 0x0

    .line 4294
    :goto_20
    return v2

    .line 4289
    .end local v12    # "S0":C
    .end local v27    # "c11":C
    .end local v33    # "c9":C
    .end local v40    # "c10":C
    .local v0, "c9":C
    .local v1, "c10":C
    .local v2, "c11":C
    :cond_55
    move/from16 v33, v0

    move/from16 v40, v1

    move/from16 v27, v2

    .line 4305
    .end local v0    # "c9":C
    .end local v1    # "c10":C
    .end local v2    # "c11":C
    .restart local v27    # "c11":C
    .restart local v33    # "c9":C
    .restart local v40    # "c10":C
    const/4 v2, 0x0

    .line 4308
    .local v2, "millis":I
    :goto_21
    add-int/lit8 v0, v5, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v6, -0x30

    add-int/2addr v0, v1

    .line 4309
    .local v0, "hour":I
    add-int/lit8 v1, v7, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v12, v8, -0x30

    add-int/2addr v1, v12

    .line 4310
    .local v1, "minute":I
    add-int/lit8 v12, v11, -0x30

    mul-int/lit8 v12, v12, 0xa

    add-int/lit8 v25, v14, -0x30

    add-int v12, v12, v25

    .line 4311
    .end local v3    # "c12":C
    .end local v4    # "c13":C
    .end local v5    # "h0":C
    .end local v6    # "h1":C
    .end local v7    # "m0":C
    .end local v8    # "m1":C
    .end local v11    # "s0":C
    .end local v14    # "s1":C
    .end local v27    # "c11":C
    .end local v33    # "c9":C
    .local v12, "seconds":I
    goto :goto_22

    .line 4312
    .end local v0    # "hour":I
    .end local v1    # "minute":I
    .end local v2    # "millis":I
    .end local v12    # "seconds":I
    .end local v40    # "c10":C
    :cond_56
    const/4 v0, 0x0

    .line 4313
    .restart local v0    # "hour":I
    const/4 v1, 0x0

    .line 4314
    .restart local v1    # "minute":I
    const/4 v12, 0x0

    .line 4315
    .restart local v12    # "seconds":I
    const/4 v2, 0x0

    .line 4318
    .restart local v2    # "millis":I
    :goto_22
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 4319
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 4320
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v12}, Ljava/util/Calendar;->set(II)V

    .line 4321
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 4323
    const/4 v3, 0x5

    iput v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4324
    const/4 v3, 0x1

    return v3
.end method

.method public final scanLongValue()J
    .locals 11

    .line 1708
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1712
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    .line 1713
    const/4 v0, 0x1

    .line 1714
    .local v0, "negative":Z
    const-wide/high16 v1, -0x8000000000000000L

    .line 1716
    .local v1, "limit":J
    const/4 v3, 0x0

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1719
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1720
    .local v3, "index":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v3, v4, :cond_0

    .line 1723
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1724
    .end local v3    # "index":I
    goto :goto_0

    .line 1721
    .restart local v3    # "index":I
    :cond_0
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "syntax error, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1726
    .end local v0    # "negative":Z
    .end local v1    # "limit":J
    .end local v3    # "index":I
    :cond_1
    const/4 v0, 0x0

    .line 1727
    .restart local v0    # "negative":Z
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1730
    .restart local v1    # "limit":J
    :goto_0
    const-wide/16 v3, 0x0

    .line 1732
    .local v3, "longValue":J
    :goto_1
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v6, 0x30

    if-lt v5, v6, :cond_5

    const/16 v6, 0x39

    if-gt v5, v6, :cond_5

    .line 1734
    add-int/lit8 v5, v5, -0x30

    .line 1735
    .local v5, "digit":I
    const-wide v6, -0xcccccccccccccccL

    const-string v8, ", "

    const-string v9, "error long value, "

    cmp-long v10, v3, v6

    if-ltz v10, :cond_4

    .line 1739
    const-wide/16 v6, 0xa

    mul-long v3, v3, v6

    .line 1740
    int-to-long v6, v5

    add-long/2addr v6, v1

    cmp-long v10, v3, v6

    if-ltz v10, :cond_3

    .line 1743
    int-to-long v6, v5

    sub-long/2addr v3, v6

    .line 1748
    .end local v5    # "digit":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1751
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1752
    .local v5, "index":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v6, :cond_2

    const/16 v6, 0x1a

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1754
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_2
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1755
    .end local v5    # "index":I
    goto :goto_1

    .line 1741
    .local v5, "digit":I
    :cond_3
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1736
    :cond_4
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1758
    .end local v5    # "digit":I
    :cond_5
    if-nez v0, :cond_6

    .line 1759
    neg-long v3, v3

    .line 1762
    :cond_6
    return-wide v3
.end method

.method public final scanNumber()V
    .locals 9

    .line 1292
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1293
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    .line 1295
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2d

    const/16 v4, 0x1a

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    .line 1296
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1299
    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1300
    .local v0, "index":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_0

    const/16 v2, 0x1a

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1302
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1307
    .end local v0    # "index":I
    :cond_1
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x39

    const/16 v6, 0x30

    if-lt v0, v6, :cond_3

    if-gt v0, v2, :cond_3

    .line 1309
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1315
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1316
    .restart local v0    # "index":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_2

    const/16 v2, 0x1a

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1318
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_2
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1319
    .end local v0    # "index":I
    goto :goto_1

    .line 1322
    :cond_3
    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 1324
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_6

    .line 1325
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1328
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1329
    .restart local v0    # "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_4

    const/16 v1, 0x1a

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1331
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_3
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1333
    .end local v0    # "index":I
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 1336
    :goto_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v0, v6, :cond_6

    if-gt v0, v2, :cond_6

    .line 1338
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1344
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1345
    .restart local v0    # "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_5

    const/16 v1, 0x1a

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1347
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_5
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1348
    .end local v0    # "index":I
    goto :goto_4

    .line 1352
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_7

    .line 1353
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1354
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_a

    .line 1355
    :cond_7
    const/16 v1, 0x53

    if-ne v0, v1, :cond_8

    .line 1356
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1357
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_a

    .line 1358
    :cond_8
    const/16 v1, 0x42

    if-ne v0, v1, :cond_9

    .line 1359
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1360
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_a

    .line 1361
    :cond_9
    const/16 v1, 0x46

    if-ne v0, v1, :cond_a

    .line 1362
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1363
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1364
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    goto/16 :goto_a

    .line 1365
    :cond_a
    const/16 v7, 0x44

    if-ne v0, v7, :cond_b

    .line 1366
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1367
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1368
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    goto/16 :goto_a

    .line 1369
    :cond_b
    const/16 v8, 0x65

    if-eq v0, v8, :cond_c

    const/16 v8, 0x45

    if-ne v0, v8, :cond_15

    .line 1371
    :cond_c
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1374
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1375
    .restart local v0    # "index":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v8, :cond_d

    const/16 v8, 0x1a

    goto :goto_6

    :cond_d
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1377
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_6
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1380
    .end local v0    # "index":I
    const/16 v0, 0x2b

    if-eq v8, v0, :cond_e

    if-ne v8, v3, :cond_10

    .line 1382
    :cond_e
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1385
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1386
    .restart local v0    # "index":I
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v3, :cond_f

    const/16 v3, 0x1a

    goto :goto_7

    :cond_f
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1388
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_7
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1393
    .end local v0    # "index":I
    :cond_10
    :goto_8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v0, v6, :cond_12

    if-gt v0, v2, :cond_12

    .line 1395
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1401
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1402
    .restart local v0    # "index":I
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v3, :cond_11

    const/16 v3, 0x1a

    goto :goto_9

    :cond_11
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1404
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_9
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1405
    .end local v0    # "index":I
    goto :goto_8

    .line 1408
    :cond_12
    if-eq v0, v7, :cond_13

    if-ne v0, v1, :cond_14

    .line 1410
    :cond_13
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1411
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1414
    :cond_14
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    .line 1415
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 1418
    :cond_15
    :goto_a
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    if-eqz v0, :cond_16

    .line 1419
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_b

    .line 1421
    :cond_16
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1423
    :goto_b
    return-void
.end method

.method public final scanNumberValue()Ljava/lang/Number;
    .locals 22

    .line 1452
    move-object/from16 v1, p0

    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1454
    .local v2, "start":I
    const/4 v0, 0x0

    .line 1455
    .local v0, "overflow":Z
    const/4 v3, 0x0

    .line 1456
    .local v3, "number":Ljava/lang/Number;
    const/4 v4, 0x0

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1460
    iget-char v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_1

    .line 1461
    const/4 v5, 0x1

    .line 1462
    .local v5, "negative":Z
    const-wide/high16 v8, -0x8000000000000000L

    .line 1464
    .local v8, "limit":J
    const/4 v10, 0x0

    add-int/lit8 v10, v10, 0x1

    iput v10, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1467
    iget v10, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1468
    .local v10, "index":I
    iget v11, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v11, :cond_0

    const/16 v11, 0x1a

    goto :goto_0

    :cond_0
    iget-object v11, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1470
    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_0
    iput-char v11, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1471
    .end local v10    # "index":I
    goto :goto_1

    .line 1473
    .end local v5    # "negative":Z
    .end local v8    # "limit":J
    :cond_1
    const/4 v5, 0x0

    .line 1474
    .restart local v5    # "negative":Z
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 1477
    .restart local v8    # "limit":J
    :goto_1
    const-wide/16 v10, 0x0

    move-wide v11, v10

    move v10, v0

    .line 1479
    .end local v0    # "overflow":Z
    .local v10, "overflow":Z
    .local v11, "longValue":J
    :goto_2
    iget-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v13, 0x39

    const/16 v14, 0x30

    if-lt v0, v14, :cond_5

    if-gt v0, v13, :cond_5

    .line 1481
    add-int/lit8 v0, v0, -0x30

    .line 1482
    .local v0, "digit":I
    const-wide v13, -0xcccccccccccccccL

    cmp-long v15, v11, v13

    if-gez v15, :cond_2

    .line 1483
    const/4 v10, 0x1

    .line 1486
    :cond_2
    const-wide/16 v13, 0xa

    mul-long v11, v11, v13

    .line 1487
    int-to-long v13, v0

    add-long/2addr v13, v8

    cmp-long v15, v11, v13

    if-gez v15, :cond_3

    .line 1488
    const/4 v10, 0x1

    .line 1490
    :cond_3
    int-to-long v13, v0

    sub-long/2addr v11, v13

    .line 1495
    .end local v0    # "digit":I
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1498
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1499
    .local v0, "index":I
    iget v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v13, :cond_4

    const/16 v13, 0x1a

    goto :goto_3

    :cond_4
    iget-object v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1501
    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v13

    :goto_3
    iput-char v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1502
    .end local v0    # "index":I
    goto :goto_2

    .line 1505
    :cond_5
    if-nez v5, :cond_6

    .line 1506
    neg-long v11, v11

    .line 1509
    :cond_6
    const/16 v15, 0x4c

    const/16 v7, 0x44

    const/16 v4, 0x46

    if-ne v0, v15, :cond_7

    .line 1510
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1511
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1512
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move v15, v5

    goto :goto_4

    .line 1513
    :cond_7
    const/16 v15, 0x53

    if-ne v0, v15, :cond_8

    .line 1514
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1515
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1516
    long-to-int v0, v11

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    move v15, v5

    goto :goto_4

    .line 1517
    :cond_8
    const/16 v15, 0x42

    if-ne v0, v15, :cond_9

    .line 1518
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1519
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1520
    long-to-int v0, v11

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    move v15, v5

    goto :goto_4

    .line 1521
    :cond_9
    if-ne v0, v4, :cond_a

    .line 1522
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1523
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1524
    long-to-float v0, v11

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move v15, v5

    goto :goto_4

    .line 1525
    :cond_a
    if-ne v0, v7, :cond_b

    .line 1526
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1527
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1528
    move v15, v5

    .end local v5    # "negative":Z
    .local v15, "negative":Z
    long-to-double v4, v11

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_4

    .line 1525
    .end local v15    # "negative":Z
    .restart local v5    # "negative":Z
    :cond_b
    move v15, v5

    .line 1531
    .end local v5    # "negative":Z
    .restart local v15    # "negative":Z
    :goto_4
    const/4 v4, 0x0

    .local v4, "isDouble":Z
    const/4 v5, 0x0

    .line 1532
    .local v5, "exp":Z
    iget-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v7, 0x2e

    if-ne v0, v7, :cond_e

    .line 1533
    const/4 v4, 0x1

    .line 1535
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1538
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1539
    .restart local v0    # "index":I
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v7, :cond_c

    const/16 v7, 0x1a

    goto :goto_5

    :cond_c
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1541
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_5
    iput-char v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1545
    .end local v0    # "index":I
    :goto_6
    iget-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v0, v14, :cond_e

    if-gt v0, v13, :cond_e

    .line 1547
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1553
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1554
    .restart local v0    # "index":I
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v7, :cond_d

    const/16 v7, 0x1a

    goto :goto_7

    :cond_d
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1556
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_7
    iput-char v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1557
    .end local v0    # "index":I
    goto :goto_6

    .line 1561
    :cond_e
    const/4 v7, 0x0

    .line 1562
    .local v7, "type":C
    iget-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v13, 0x65

    const/16 v14, 0x2b

    if-eq v0, v13, :cond_f

    const/16 v13, 0x45

    if-ne v0, v13, :cond_18

    .line 1564
    :cond_f
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1567
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1568
    .restart local v0    # "index":I
    iget v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v13, :cond_10

    const/16 v13, 0x1a

    goto :goto_8

    :cond_10
    iget-object v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1570
    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v13

    :goto_8
    iput-char v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1573
    .end local v0    # "index":I
    if-eq v13, v14, :cond_11

    if-ne v13, v6, :cond_13

    .line 1575
    :cond_11
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1578
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1579
    .restart local v0    # "index":I
    iget v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v13, :cond_12

    const/16 v13, 0x1a

    goto :goto_9

    :cond_12
    iget-object v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1581
    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v13

    :goto_9
    iput-char v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1586
    .end local v0    # "index":I
    :cond_13
    :goto_a
    iget-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v13, 0x30

    if-lt v0, v13, :cond_15

    const/16 v13, 0x39

    if-gt v0, v13, :cond_15

    .line 1588
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1594
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1595
    .restart local v0    # "index":I
    iget v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v13, :cond_14

    const/16 v13, 0x1a

    goto :goto_b

    :cond_14
    iget-object v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1597
    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v13

    :goto_b
    iput-char v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1598
    .end local v0    # "index":I
    goto :goto_a

    .line 1601
    :cond_15
    const/16 v13, 0x44

    if-eq v0, v13, :cond_16

    const/16 v13, 0x46

    if-ne v0, v13, :cond_17

    .line 1603
    :cond_16
    iget v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1604
    iget-char v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1605
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1608
    :cond_17
    const/4 v5, 0x1

    .line 1611
    :cond_18
    if-nez v4, :cond_1c

    if-nez v5, :cond_1c

    .line 1613
    if-eqz v10, :cond_19

    .line 1614
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int v6, v0, v2

    .line 1615
    .local v6, "len":I
    new-array v13, v6, [C

    .line 1616
    .local v13, "chars":[C
    iget-object v14, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "number":Ljava/lang/Number;
    .local v16, "number":Ljava/lang/Number;
    invoke-virtual {v14, v2, v0, v13, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1617
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([C)V

    .line 1618
    .local v0, "strVal":Ljava/lang/String;
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .end local v16    # "number":Ljava/lang/Number;
    .restart local v3    # "number":Ljava/lang/Number;
    goto :goto_c

    .line 1613
    .end local v0    # "strVal":Ljava/lang/String;
    .end local v6    # "len":I
    .end local v13    # "chars":[C
    :cond_19
    move-object/from16 v16, v3

    .line 1620
    :goto_c
    if-nez v3, :cond_1b

    .line 1621
    const-wide/32 v13, -0x80000000

    cmp-long v0, v11, v13

    if-lez v0, :cond_1a

    const-wide/32 v13, 0x7fffffff

    cmp-long v0, v11, v13

    if-gez v0, :cond_1a

    .line 1622
    long-to-int v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_d

    .line 1624
    :cond_1a
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1627
    :cond_1b
    :goto_d
    return-object v3

    .line 1611
    :cond_1c
    move-object/from16 v16, v3

    .line 1630
    .end local v3    # "number":Ljava/lang/Number;
    .restart local v16    # "number":Ljava/lang/Number;
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v2

    .line 1631
    .local v3, "len":I
    if-eqz v7, :cond_1d

    .line 1632
    add-int/lit8 v3, v3, -0x1

    .line 1636
    :cond_1d
    iget-object v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v0, v13

    if-ge v3, v0, :cond_1e

    .line 1637
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v14, v2, v3

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v14, v13, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 1638
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object v6, v0

    .local v0, "chars":[C
    goto :goto_e

    .line 1640
    .end local v0    # "chars":[C
    :cond_1e
    const/4 v6, 0x0

    new-array v0, v3, [C

    .line 1641
    .restart local v0    # "chars":[C
    iget-object v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v14, v2, v3

    invoke-virtual {v13, v2, v14, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    move-object v6, v0

    .line 1646
    .end local v0    # "chars":[C
    .local v6, "chars":[C
    :goto_e
    if-nez v5, :cond_1f

    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v13, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    iget v13, v13, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v13

    if-eqz v0, :cond_1f

    .line 1648
    new-instance v0, Ljava/math/BigDecimal;

    const/4 v13, 0x0

    invoke-direct {v0, v6, v13, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    move/from16 v19, v2

    move/from16 v18, v4

    move/from16 v20, v5

    .end local v16    # "number":Ljava/lang/Number;
    .local v0, "number":Ljava/lang/Number;
    goto/16 :goto_12

    .line 1652
    .end local v0    # "number":Ljava/lang/Number;
    .restart local v16    # "number":Ljava/lang/Number;
    :cond_1f
    const/16 v0, 0x9

    if-gt v3, v0, :cond_28

    if-nez v5, :cond_28

    .line 1653
    const/4 v0, 0x0

    .line 1654
    .local v0, "i":I
    add-int/lit8 v13, v0, 0x1

    .end local v0    # "i":I
    .local v13, "i":I
    :try_start_0
    aget-char v0, v6, v0

    .line 1655
    .local v0, "c":C
    const/16 v14, 0x2d

    if-eq v0, v14, :cond_20

    const/16 v14, 0x2b

    if-ne v0, v14, :cond_21

    .line 1656
    :cond_20
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "i":I
    .local v14, "i":I
    aget-char v13, v6, v13
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v13

    move v13, v14

    .line 1659
    .end local v14    # "i":I
    .restart local v13    # "i":I
    :cond_21
    add-int/lit8 v14, v0, -0x30

    .line 1660
    .local v14, "intVal":I
    const/16 v17, 0x0

    move/from16 v21, v17

    move/from16 v17, v0

    move/from16 v0, v21

    .line 1661
    .local v0, "power":I
    .local v17, "c":C
    :goto_f
    if-ge v13, v3, :cond_24

    .line 1662
    :try_start_1
    aget-char v19, v6, v13
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v17, v19

    .line 1664
    move/from16 v19, v2

    move/from16 v1, v17

    const/16 v2, 0x2e

    .end local v2    # "start":I
    .end local v17    # "c":C
    .local v1, "c":C
    .local v19, "start":I
    if-ne v1, v2, :cond_22

    .line 1665
    const/4 v0, 0x1

    .line 1666
    goto :goto_10

    .line 1668
    :cond_22
    add-int/lit8 v17, v1, -0x30

    .line 1669
    .local v17, "digit":I
    mul-int/lit8 v20, v14, 0xa

    add-int v20, v20, v17

    .line 1671
    .end local v14    # "intVal":I
    .local v20, "intVal":I
    if-eqz v0, :cond_23

    .line 1672
    mul-int/lit8 v0, v0, 0xa

    move/from16 v14, v20

    goto :goto_10

    .line 1671
    :cond_23
    move/from16 v14, v20

    .line 1661
    .end local v17    # "digit":I
    .end local v20    # "intVal":I
    .restart local v14    # "intVal":I
    :goto_10
    add-int/lit8 v13, v13, 0x1

    move/from16 v17, v1

    move/from16 v2, v19

    move-object/from16 v1, p0

    goto :goto_f

    .line 1699
    .end local v0    # "power":I
    .end local v1    # "c":C
    .end local v13    # "i":I
    .end local v14    # "intVal":I
    .end local v19    # "start":I
    .restart local v2    # "start":I
    :catch_0
    move-exception v0

    move/from16 v19, v2

    move/from16 v18, v4

    move/from16 v20, v5

    .end local v2    # "start":I
    .restart local v19    # "start":I
    goto :goto_13

    .line 1676
    .end local v19    # "start":I
    .restart local v0    # "power":I
    .restart local v2    # "start":I
    .restart local v13    # "i":I
    .restart local v14    # "intVal":I
    .local v17, "c":C
    :cond_24
    move/from16 v19, v2

    .end local v2    # "start":I
    .restart local v19    # "start":I
    const/16 v1, 0x46

    if-ne v7, v1, :cond_26

    .line 1677
    int-to-float v1, v14

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 1678
    .local v1, "floatVal":F
    if-eqz v15, :cond_25

    .line 1679
    neg-float v1, v1

    .line 1682
    :cond_25
    :try_start_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    .line 1699
    .end local v0    # "power":I
    .end local v1    # "floatVal":F
    .end local v13    # "i":I
    .end local v14    # "intVal":I
    .end local v17    # "c":C
    :catch_1
    move-exception v0

    move/from16 v18, v4

    move/from16 v20, v5

    goto :goto_13

    .line 1685
    .restart local v0    # "power":I
    .restart local v13    # "i":I
    .restart local v14    # "intVal":I
    .restart local v17    # "c":C
    :cond_26
    int-to-double v1, v14

    move/from16 v18, v4

    move/from16 v20, v5

    .end local v4    # "isDouble":Z
    .end local v5    # "exp":Z
    .local v18, "isDouble":Z
    .local v20, "exp":Z
    int-to-double v4, v0

    div-double/2addr v1, v4

    .line 1686
    .local v1, "doubleVal":D
    if-eqz v15, :cond_27

    .line 1687
    neg-double v1, v1

    .line 1690
    :cond_27
    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    return-object v4

    .line 1699
    .end local v0    # "power":I
    .end local v1    # "doubleVal":D
    .end local v13    # "i":I
    .end local v14    # "intVal":I
    .end local v17    # "c":C
    .end local v18    # "isDouble":Z
    .end local v19    # "start":I
    .end local v20    # "exp":Z
    .restart local v2    # "start":I
    .restart local v4    # "isDouble":Z
    .restart local v5    # "exp":Z
    :catch_2
    move-exception v0

    move/from16 v19, v2

    move/from16 v18, v4

    move/from16 v20, v5

    .end local v2    # "start":I
    .end local v4    # "isDouble":Z
    .end local v5    # "exp":Z
    .restart local v18    # "isDouble":Z
    .restart local v19    # "start":I
    .restart local v20    # "exp":Z
    goto :goto_13

    .line 1652
    .end local v18    # "isDouble":Z
    .end local v19    # "start":I
    .end local v20    # "exp":Z
    .restart local v2    # "start":I
    .restart local v4    # "isDouble":Z
    .restart local v5    # "exp":Z
    :cond_28
    move/from16 v19, v2

    move/from16 v18, v4

    move/from16 v20, v5

    .line 1693
    .end local v2    # "start":I
    .end local v4    # "isDouble":Z
    .end local v5    # "exp":Z
    .restart local v18    # "isDouble":Z
    .restart local v19    # "start":I
    .restart local v20    # "exp":Z
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1694
    .local v1, "strVal":Ljava/lang/String;
    const/16 v0, 0x46

    if-ne v7, v0, :cond_29

    .line 1695
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .end local v16    # "number":Ljava/lang/Number;
    .local v0, "number":Ljava/lang/Number;
    goto :goto_11

    .line 1697
    .end local v0    # "number":Ljava/lang/Number;
    .restart local v16    # "number":Ljava/lang/Number;
    :cond_29
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1701
    .end local v1    # "strVal":Ljava/lang/String;
    .end local v16    # "number":Ljava/lang/Number;
    .restart local v0    # "number":Ljava/lang/Number;
    :goto_11
    nop

    .line 1704
    :goto_12
    return-object v0

    .line 1699
    .end local v0    # "number":Ljava/lang/Number;
    .restart local v16    # "number":Ljava/lang/Number;
    :catch_3
    move-exception v0

    .line 1700
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :goto_13
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final scanString()V
    .locals 14

    .line 987
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 988
    .local v0, "quoteChar":C
    const/4 v1, 0x0

    .line 989
    .local v1, "hasSpecial":Z
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x1

    .line 990
    .local v2, "startIndex":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 991
    .local v3, "endIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    .line 998
    sub-int v4, v3, v2

    .line 999
    .local v4, "chars_len":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v5

    .line 1000
    .local v5, "chars":[C
    :goto_0
    const/16 v6, 0x5c

    if-lez v4, :cond_4

    add-int/lit8 v7, v4, -0x1

    aget-char v7, v5, v7

    if-ne v7, v6, :cond_4

    .line 1003
    const/4 v7, 0x1

    .line 1004
    .local v7, "slashCount":I
    add-int/lit8 v8, v4, -0x2

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_0

    .line 1005
    aget-char v9, v5, v8

    if-ne v9, v6, :cond_0

    .line 1006
    add-int/lit8 v7, v7, 0x1

    .line 1004
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 1011
    .end local v8    # "i":I
    :cond_0
    rem-int/lit8 v8, v7, 0x2

    if-nez v8, :cond_1

    .line 1012
    goto :goto_2

    .line 1015
    :cond_1
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 1016
    .local v6, "nextIndex":I
    sub-int v8, v6, v3

    .line 1017
    .local v8, "nextLen":I
    add-int v9, v4, v8

    .line 1019
    .local v9, "next_chars_len":I
    array-length v10, v5

    if-lt v9, v10, :cond_3

    .line 1020
    array-length v10, v5

    mul-int/lit8 v10, v10, 0x3

    div-int/lit8 v10, v10, 0x2

    .line 1021
    .local v10, "newLen":I
    if-ge v10, v9, :cond_2

    .line 1022
    move v10, v9

    .line 1024
    :cond_2
    new-array v11, v10, [C

    .line 1025
    .local v11, "newChars":[C
    array-length v12, v5

    const/4 v13, 0x0

    invoke-static {v5, v13, v11, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1026
    move-object v5, v11

    .line 1028
    .end local v10    # "newLen":I
    .end local v11    # "newChars":[C
    :cond_3
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v3, v6, v5, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1030
    move v4, v9

    .line 1031
    move v3, v6

    .line 1032
    const/4 v1, 0x1

    .line 1033
    .end local v6    # "nextIndex":I
    .end local v7    # "slashCount":I
    .end local v8    # "nextLen":I
    .end local v9    # "next_chars_len":I
    goto :goto_0

    .line 1035
    :cond_4
    :goto_2
    if-nez v1, :cond_6

    .line 1036
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v4, :cond_6

    .line 1037
    aget-char v8, v5, v7

    if-ne v8, v6, :cond_5

    .line 1038
    const/4 v1, 0x1

    .line 1036
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1043
    .end local v7    # "i":I
    :cond_6
    iput-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1044
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1045
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1046
    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    .line 1048
    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1051
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1052
    .local v6, "index":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_7

    const/16 v7, 0x1a

    goto :goto_4

    :cond_7
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1054
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_4
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1057
    .end local v6    # "index":I
    const/4 v6, 0x4

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1058
    return-void

    .line 992
    .end local v4    # "chars_len":I
    .end local v5    # "chars":[C
    :cond_8
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unclosed str, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public scanStringValue(C)Ljava/lang/String;
    .locals 8
    .param p1, "quoteChar"    # C

    .line 1061
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    .line 1062
    .local v0, "startIndex":I
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1063
    .local v1, "endIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 1067
    const/4 v3, 0x0

    .line 1068
    .local v3, "strVal":Ljava/lang/String;
    sget-boolean v4, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    if-eqz v4, :cond_0

    .line 1069
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1071
    :cond_0
    sub-int v4, v1, v0

    .line 1072
    .local v4, "chars_len":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v5

    .line 1073
    .local v5, "chars":[C
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7, v4}, Ljava/lang/String;-><init>([CII)V

    move-object v3, v6

    .line 1076
    .end local v4    # "chars_len":I
    .end local v5    # "chars":[C
    :goto_0
    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v2, :cond_3

    .line 1078
    :goto_1
    const/4 v2, 0x0

    .line 1079
    .local v2, "slashCount":I
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_1

    .line 1080
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_1

    .line 1081
    add-int/lit8 v2, v2, 0x1

    .line 1079
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 1086
    .end local v5    # "i":I
    :cond_1
    rem-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_2

    .line 1087
    nop

    .line 1092
    .end local v2    # "slashCount":I
    sub-int v2, v1, v0

    .line 1093
    .local v2, "chars_len":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v4

    .line 1094
    .local v4, "chars":[C
    invoke-static {v4, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1089
    .end local v4    # "chars":[C
    .local v2, "slashCount":I
    :cond_2
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, p1, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1090
    .end local v2    # "slashCount":I
    goto :goto_1

    .line 1097
    :cond_3
    :goto_3
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1100
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1101
    .local v2, "index":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_4

    const/16 v4, 0x1a

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1103
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_4
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1106
    .end local v2    # "index":I
    return-object v3

    .line 1064
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_5
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unclosed str, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 4
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 703
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    const/16 v2, 0x9

    if-eq v0, v2, :cond_6

    const/16 v2, 0xc

    if-eq v0, v2, :cond_6

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 715
    :cond_0
    const/16 v2, 0x22

    if-ne v0, v2, :cond_1

    .line 716
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 719
    :cond_1
    const/16 v2, 0x27

    if-ne v0, v2, :cond_2

    .line 720
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 723
    :cond_2
    const/16 v2, 0x7d

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 724
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 725
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 726
    return-object v3

    .line 729
    :cond_3
    const/16 v1, 0x2c

    if-ne v0, v1, :cond_4

    .line 730
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 731
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 732
    return-object v3

    .line 735
    :cond_4
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_5

    .line 736
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 737
    return-object v3

    .line 740
    :cond_5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 709
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0
.end method

.method public scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 16
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p2, "quoteChar"    # C

    .line 744
    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    .line 746
    .local v2, "hash":I
    const/4 v3, 0x0

    .line 747
    .local v3, "hasSpecial":Z
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v4, 0x1

    .line 748
    .local v4, "startIndex":I
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v5, v1, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 749
    .local v5, "endIndex":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_b

    .line 756
    sub-int v6, v5, v4

    .line 757
    .local v6, "chars_len":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v7

    .line 758
    .local v7, "chars":[C
    :goto_0
    const/16 v8, 0x5c

    const/4 v9, 0x0

    if-lez v6, :cond_4

    add-int/lit8 v10, v6, -0x1

    aget-char v10, v7, v10

    if-ne v10, v8, :cond_4

    .line 761
    const/4 v10, 0x1

    .line 762
    .local v10, "slashCount":I
    add-int/lit8 v11, v6, -0x2

    .local v11, "i":I
    :goto_1
    if-ltz v11, :cond_0

    .line 763
    aget-char v12, v7, v11

    if-ne v12, v8, :cond_0

    .line 764
    add-int/lit8 v10, v10, 0x1

    .line 762
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 769
    .end local v11    # "i":I
    :cond_0
    rem-int/lit8 v11, v10, 0x2

    if-nez v11, :cond_1

    .line 770
    goto :goto_2

    .line 773
    :cond_1
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v8, v1, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 774
    .local v8, "nextIndex":I
    sub-int v11, v8, v5

    .line 775
    .local v11, "nextLen":I
    add-int v12, v6, v11

    .line 777
    .local v12, "next_chars_len":I
    array-length v13, v7

    if-lt v12, v13, :cond_3

    .line 778
    array-length v13, v7

    mul-int/lit8 v13, v13, 0x3

    div-int/lit8 v13, v13, 0x2

    .line 779
    .local v13, "newLen":I
    if-ge v13, v12, :cond_2

    .line 780
    move v13, v12

    .line 782
    :cond_2
    new-array v14, v13, [C

    .line 783
    .local v14, "newChars":[C
    array-length v15, v7

    invoke-static {v7, v9, v14, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    move-object v7, v14

    .line 786
    .end local v13    # "newLen":I
    .end local v14    # "newChars":[C
    :cond_3
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v9, v5, v8, v7, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 788
    move v6, v12

    .line 789
    move v5, v8

    .line 790
    const/4 v3, 0x1

    .line 791
    .end local v8    # "nextIndex":I
    .end local v10    # "slashCount":I
    .end local v11    # "nextLen":I
    .end local v12    # "next_chars_len":I
    goto :goto_0

    .line 794
    :cond_4
    :goto_2
    if-nez v3, :cond_9

    .line 795
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v6, :cond_6

    .line 796
    aget-char v11, v7, v10

    .line 797
    .local v11, "ch":C
    mul-int/lit8 v12, v2, 0x1f

    add-int v2, v12, v11

    .line 798
    if-ne v11, v8, :cond_5

    .line 799
    const/4 v3, 0x1

    .line 795
    .end local v11    # "ch":C
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 803
    .end local v10    # "i":I
    :cond_6
    if-eqz v3, :cond_7

    .line 804
    invoke-static {v7, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    move-object/from16 v8, p1

    goto :goto_4

    :cond_7
    const/16 v8, 0x14

    if-ge v6, v8, :cond_8

    .line 806
    move-object/from16 v8, p1

    invoke-virtual {v8, v7, v9, v6, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_8
    move-object/from16 v8, p1

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7, v9, v6}, Ljava/lang/String;-><init>([CII)V

    move-object v9, v10

    :goto_4
    nop

    .local v9, "strVal":Ljava/lang/String;
    goto :goto_5

    .line 809
    .end local v9    # "strVal":Ljava/lang/String;
    :cond_9
    move-object/from16 v8, p1

    invoke-static {v7, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v9

    .line 812
    .restart local v9    # "strVal":Ljava/lang/String;
    :goto_5
    add-int/lit8 v10, v5, 0x1

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 815
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 816
    .local v10, "index":I
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v11, :cond_a

    const/16 v11, 0x1a

    goto :goto_6

    :cond_a
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 818
    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_6
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 821
    .end local v10    # "index":I
    return-object v9

    .line 750
    .end local v6    # "chars_len":I
    .end local v7    # "chars":[C
    .end local v9    # "strVal":Ljava/lang/String;
    :cond_b
    move-object/from16 v8, p1

    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unclosed str, "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 7
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 948
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 950
    .local v0, "first":C
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    aget-boolean v1, v2, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 951
    .local v1, "firstFlag":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 956
    move v2, v0

    .line 958
    .local v2, "hash":I
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 959
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 961
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    move-result v3

    .line 963
    .local v3, "ch":C
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    array-length v6, v5

    if-ge v3, v6, :cond_3

    .line 964
    aget-boolean v5, v5, v3

    if-nez v5, :cond_3

    .line 965
    nop

    .line 975
    .end local v3    # "ch":C
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 976
    const/16 v3, 0x12

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 978
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 979
    const-string/jumbo v5, "null"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 980
    const/4 v3, 0x0

    return-object v3

    .line 983
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 969
    .restart local v3    # "ch":C
    :cond_3
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v3

    .line 971
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 972
    goto :goto_2

    .line 952
    .end local v2    # "hash":I
    .end local v3    # "ch":C
    :cond_4
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal identifier : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected setTime(CCCCCC)V
    .locals 5
    .param p1, "h0"    # C
    .param p2, "h1"    # C
    .param p3, "m0"    # C
    .param p4, "m1"    # C
    .param p5, "s0"    # C
    .param p6, "s1"    # C

    .line 4592
    add-int/lit8 v0, p1, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, p2, -0x30

    add-int/2addr v0, v1

    .line 4593
    .local v0, "hour":I
    add-int/lit8 v1, p3, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p4, -0x30

    add-int/2addr v1, v2

    .line 4594
    .local v1, "minute":I
    add-int/lit8 v2, p5, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, p6, -0x30

    add-int/2addr v2, v3

    .line 4595
    .local v2, "seconds":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 4596
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 4597
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 4598
    return-void
.end method

.method protected setTimeZone(CCC)V
    .locals 4
    .param p1, "timeZoneFlag"    # C
    .param p2, "t0"    # C
    .param p3, "t1"    # C

    .line 4601
    add-int/lit8 v0, p2, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, p3, -0x30

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0xe10

    mul-int/lit16 v0, v0, 0x3e8

    .line 4602
    .local v0, "timeZoneOffset":I
    const/16 v1, 0x2d

    if-ne p1, v1, :cond_0

    .line 4603
    neg-int v0, v0

    .line 4606
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 4607
    invoke-static {v0}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 4608
    .local v1, "timeZoneIDs":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_1

    .line 4609
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 4610
    .local v2, "timeZone":Ljava/util/TimeZone;
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4613
    .end local v1    # "timeZoneIDs":[Ljava/lang/String;
    .end local v2    # "timeZone":Ljava/util/TimeZone;
    :cond_1
    return-void
.end method

.method protected skipComment()V
    .locals 4

    .line 918
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 919
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 921
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 922
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 923
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 924
    return-void

    .line 927
    :cond_1
    const/16 v2, 0x2a

    if-ne v0, v2, :cond_5

    .line 928
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 930
    :cond_2
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_4

    .line 931
    if-ne v0, v2, :cond_3

    .line 932
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 933
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v1, :cond_2

    .line 934
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 935
    goto :goto_1

    .line 940
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 945
    :cond_4
    :goto_1
    return-void

    .line 943
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final skipWhitespace()V
    .locals 3

    .line 1270
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_2

    .line 1271
    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 1279
    :cond_0
    if-ne v0, v1, :cond_2

    .line 1280
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipComment()V

    .line 1281
    goto :goto_0

    .line 1277
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1278
    goto :goto_0

    .line 1289
    :cond_2
    return-void
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 2

    .line 1219
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1220
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1221
    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 1219
    :goto_0
    return-object v0
.end method

.method final sub_chars(II)[C
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 1236
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    .line 1237
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v3, p1, p2

    invoke-virtual {v1, p1, v3, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1238
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    return-object v0

    .line 1240
    :cond_0
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1241
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v3, p1, p2

    invoke-virtual {v1, p1, v3, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1242
    return-object v0
.end method

.method public final token()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v0
.end method
