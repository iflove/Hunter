.class public Lcom/ta/utdid2/android/utils/RC4;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/android/utils/RC4$RC4Key;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/ta/utdid2/android/utils/RC4$RC4Key;
    .locals 9

    .line 30
    new-instance v0, Lcom/ta/utdid2/android/utils/RC4$RC4Key;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ta/utdid2/android/utils/RC4$RC4Key;-><init>(Lcom/ta/utdid2/android/utils/RC4$1;)V

    .line 34
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x100

    if-ge v3, v4, :cond_0

    .line 35
    iget-object v4, v0, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->state:[I

    aput v3, v4, v3

    .line 34
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 37
    :cond_0
    iput v2, v0, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->x:I

    .line 38
    iput v2, v0, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->y:I

    .line 39
    nop

    .line 40
    nop

    .line 42
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 43
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, v0, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->state:[I

    aget v7, v7, v2

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x100

    .line 44
    iget-object v6, v0, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->state:[I

    aget v6, v6, v2

    .line 45
    iget-object v7, v0, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->state:[I

    iget-object v8, v0, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->state:[I

    aget v8, v8, v5

    aput v8, v7, v2

    .line 46
    iget-object v7, v0, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->state:[I

    aput v6, v7, v5

    .line 47
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/2addr v3, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    return-object v1

    .line 51
    :cond_1
    nop

    .line 52
    return-object v0
.end method

.method private static a([BLcom/ta/utdid2/android/utils/RC4$RC4Key;)[B
    .locals 7
    .param p0, "pData"    # [B
    .param p1, "pKey"    # Lcom/ta/utdid2/android/utils/RC4$RC4Key;

    .line 58
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 63
    iget v0, p1, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->x:I

    .line 64
    .local v0, "x":I
    iget v1, p1, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->y:I

    .line 66
    .local v1, "y":I
    const/4 v2, 0x0

    .local v2, "counter":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 68
    add-int/lit8 v3, v0, 0x1

    rem-int/lit16 v0, v3, 0x100

    .line 69
    iget-object v3, p1, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->state:[I

    aget v3, v3, v0

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x100

    .line 70
    iget-object v3, p1, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->state:[I

    aget v3, v3, v0

    .line 71
    .local v3, "lSwapInt":I
    iget-object v4, p1, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->state:[I

    iget-object v5, p1, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->state:[I

    aget v5, v5, v1

    aput v5, v4, v0

    .line 72
    iget-object v4, p1, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->state:[I

    aput v3, v4, v1

    .line 73
    iget-object v4, p1, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->state:[I

    aget v4, v4, v0

    iget-object v5, p1, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->state:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    rem-int/lit16 v4, v4, 0x100

    .line 75
    .local v4, "xorIndex":I
    aget-byte v5, p0, v2

    iget-object v6, p1, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->state:[I

    aget v6, v6, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p0, v2

    .line 66
    .end local v3    # "lSwapInt":I
    nop

    .end local v4    # "xorIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iput v0, p1, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->x:I

    .line 78
    iput v1, p1, Lcom/ta/utdid2/android/utils/RC4$RC4Key;->y:I

    .line 79
    return-object p0

    .line 81
    .end local v0    # "x":I
    .end local v1    # "y":I
    .end local v2    # "counter":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static rc4([B)[B
    .locals 3
    .param p0, "pData"    # [B

    .line 19
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 20
    const-string v1, "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK"

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/RC4;->a(Ljava/lang/String;)Lcom/ta/utdid2/android/utils/RC4$RC4Key;

    move-result-object v1

    move-object v2, v0

    .line 21
    .local v2, "lRC4Key":Lcom/ta/utdid2/android/utils/RC4$RC4Key;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 22
    invoke-static {p0, v2}, Lcom/ta/utdid2/android/utils/RC4;->a([BLcom/ta/utdid2/android/utils/RC4$RC4Key;)[B

    move-result-object v0

    return-object v0

    .line 25
    .end local v2    # "lRC4Key":Lcom/ta/utdid2/android/utils/RC4$RC4Key;
    :cond_0
    return-object v0
.end method
