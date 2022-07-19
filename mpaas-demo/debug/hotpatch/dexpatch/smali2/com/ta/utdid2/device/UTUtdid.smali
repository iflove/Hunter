.class public Lcom/ta/utdid2/device/UTUtdid;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/ta/utdid2/device/UTUtdid;

.field private static final j:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lcom/ta/utdid2/device/UTUtdidHelper;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

.field private i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

.field private k:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->b:Ljava/lang/Object;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->c:Lcom/ta/utdid2/device/UTUtdid;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".UTSystemConfig"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->e:Lcom/ta/utdid2/device/UTUtdidHelper;

    .line 36
    const-string v1, "xx_utdid_key"

    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->f:Ljava/lang/String;

    .line 37
    const-string v1, "xx_utdid_domain"

    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->g:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->h:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 43
    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 47
    const-string v0, "[^0-9a-zA-Z=/+]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->k:Ljava/util/regex/Pattern;

    .line 50
    iput-object p1, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    sget-object v3, Lcom/ta/utdid2/device/UTUtdid;->j:Ljava/lang/String;

    const-string v4, "Alvin2"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 54
    new-instance v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v9, ".DataStorage"

    const-string v10, "ContextData"

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->h:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 56
    new-instance v0, Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-direct {v0}, Lcom/ta/utdid2/device/UTUtdidHelper;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->e:Lcom/ta/utdid2/device/UTUtdidHelper;

    .line 57
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "K_%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->f:Ljava/lang/String;

    .line 58
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "D_%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->g:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private a()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v0, :cond_4

    .line 66
    const-string v1, "UTDID2"

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 67
    .local v1, "lUtdid":Ljava/lang/String;
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v2, "UTDID"

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    move-object v1, v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/UTUtdid;->a(Ljava/lang/String;)V

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 74
    .local v0, "lNeedSync":Z
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v3, "DID"

    invoke-virtual {v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->remove(Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x1

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v3, "EI"

    invoke-virtual {v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 82
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->remove(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v3, "SI"

    invoke-virtual {v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 88
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->remove(Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x1

    .line 92
    :cond_3
    if-eqz v0, :cond_4

    .line 93
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    .line 97
    .end local v0    # "lNeedSync":Z
    .end local v1    # "lUtdid":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "pUtdid"    # Ljava/lang/String;

    .line 123
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 127
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v0, :cond_1

    .line 129
    const-string v1, "UTDID2"

    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    .line 134
    :cond_1
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 232
    const-string v2, "UTDID2"

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    .line 233
    .local v2, "lUtdid":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->e:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    return-object v2

    .line 240
    .end local v2    # "lUtdid":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .param p1, "pPackedUtdid"    # Ljava/lang/String;

    .line 140
    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->h:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "lPackedUtdid":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->h:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->h:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    .line 149
    .end local v0    # "lPackedUtdid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .param p1, "lUtdid"    # Ljava/lang/String;

    .line 158
    const-string v0, "mqBRboGZkQPcAkyk"

    invoke-direct {p0}, Lcom/ta/utdid2/device/UTUtdid;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 164
    :cond_0
    const/16 v1, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 165
    const/4 v1, 0x0

    .line 167
    .local v1, "data":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    .line 168
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 167
    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 172
    goto :goto_0

    .line 170
    :catch_0
    move-exception v2

    .line 174
    :goto_0
    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/UTUtdid;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    :try_start_1
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    .line 177
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 176
    invoke-static {v2, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    return-void

    .line 179
    :catch_1
    move-exception v0

    .line 186
    .end local v1    # "data":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private c()[B
    .locals 9

    .line 425
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 426
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    .line 427
    .local v2, "timestamp":I
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 430
    .local v1, "uniqueID":I
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v3

    .line 431
    .local v3, "bTimestamp":[B
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v4

    .line 432
    .local v4, "bUniqueID":[B
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v0, v3, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 433
    invoke-virtual {v0, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 434
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 435
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 438
    :try_start_0
    iget-object v7, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .local v7, "imei":Ljava/lang/String;
    goto :goto_0

    .line 439
    .end local v7    # "imei":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 440
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 442
    .restart local v7    # "imei":Ljava/lang/String;
    :goto_0
    invoke-static {v7}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v8

    .line 443
    invoke-static {v8}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v8

    .line 444
    .local v8, "bHashCode":[B
    invoke-virtual {v0, v8, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 445
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/ta/utdid2/device/UTUtdid;->calcHmac([B)Ljava/lang/String;

    move-result-object v5

    .line 446
    invoke-static {v5}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v5

    .line 447
    .local v5, "bCheckSum":[B
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 448
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method public static calcHmac([B)Ljava/lang/String;
    .locals 5
    .param p0, "src"    # [B

    .line 455
    const/16 v0, 0x2c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 459
    .local v0, "key":[B
    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 460
    .local v1, "mac":Ljavax/crypto/Mac;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/RC4;->rc4([B)[B

    move-result-object v3

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 461
    .local v2, "sk":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 462
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    .line 463
    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :array_0
    .array-data 1
        0x45t
        0x72t
        0x74t
        -0x21t
        0x7dt
        -0x36t
        -0x1ft
        0x56t
        -0xbt
        0xbt
        -0x4et
        -0x60t
        -0x11t
        -0x63t
        0x40t
        0x17t
        -0x5ft
        -0x7et
        -0x52t
        -0x40t
        0x71t
        0x74t
        -0x10t
        -0x67t
        0x31t
        -0x1et
        0x9t
        -0x27t
        0x21t
        -0x50t
        -0x44t
        -0x4et
        -0x75t
        0x35t
        0x1et
        -0x7at
        0x40t
        -0x68t
        0x4at
        -0x31t
        0x6at
        0x55t
        -0x26t
        -0x5dt
    .end array-data
.end method

.method private d(Ljava/lang/String;)V
    .locals 3
    .param p1, "pPackedUtdid"    # Ljava/lang/String;

    .line 194
    const-string v0, "dxCRMxhQkdGePGnp"

    const/4 v1, 0x0

    .line 196
    .local v1, "data":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 200
    goto :goto_0

    .line 198
    :catch_0
    move-exception v2

    .line 201
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    :try_start_1
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    return-void

    .line 205
    :catch_1
    move-exception v0

    .line 209
    :cond_0
    return-void
.end method

.method private d()Z
    .locals 4

    .line 467
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    .line 468
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 467
    const-string v3, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    .line 469
    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 1
    .param p1, "lPackedUtdid"    # Ljava/lang/String;

    .line 218
    invoke-direct {p0}, Lcom/ta/utdid2/device/UTUtdid;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    if-eqz p1, :cond_0

    .line 220
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->d(Ljava/lang/String;)V

    .line 223
    :cond_0
    return-void
.end method

.method private f(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pUtdid"    # Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 249
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 252
    :cond_0
    const/16 v1, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 253
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    return v2

    .line 260
    :cond_1
    return v0
.end method

.method public static instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 103
    if-eqz p0, :cond_1

    .line 104
    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->c:Lcom/ta/utdid2/device/UTUtdid;

    if-nez v0, :cond_1

    .line 105
    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lcom/ta/utdid2/device/UTUtdid;->c:Lcom/ta/utdid2/device/UTUtdid;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Lcom/ta/utdid2/device/UTUtdid;

    invoke-direct {v1, p0}, Lcom/ta/utdid2/device/UTUtdid;-><init>(Landroid/content/Context;)V

    .line 108
    sput-object v1, Lcom/ta/utdid2/device/UTUtdid;->c:Lcom/ta/utdid2/device/UTUtdid;

    invoke-direct {v1}, Lcom/ta/utdid2/device/UTUtdid;->a()V

    .line 110
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 113
    :cond_1
    :goto_0
    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->c:Lcom/ta/utdid2/device/UTUtdid;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 270
    monitor-exit p0

    return-object v0

    .line 272
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/ta/utdid2/device/UTUtdid;->getValueForUpdate()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 268
    .end local p0    # "this":Lcom/ta/utdid2/device/UTUtdid;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValueForUpdate()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 281
    :try_start_0
    invoke-virtual {p0}, Lcom/ta/utdid2/device/UTUtdid;->readUtdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;

    .line 282
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 289
    .end local p0    # "this":Lcom/ta/utdid2/device/UTUtdid;
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/ta/utdid2/device/UTUtdid;->c()[B

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    .line 290
    .local v2, "lUtdid":[B
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 292
    const/4 v1, 0x2

    :try_start_2
    invoke-static {v2, v1}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;

    .line 293
    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/UTUtdid;->a(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->e:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v1, v2}, Lcom/ta/utdid2/device/UTUtdidHelper;->pack([B)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    .line 296
    .local v3, "lPackedUtdid":Ljava/lang/String;
    move-object v3, v1

    if-eqz v1, :cond_1

    .line 298
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->e(Ljava/lang/String;)V

    .line 300
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->b(Ljava/lang/String;)V

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 305
    .end local v2    # "lUtdid":[B
    .end local v3    # "lPackedUtdid":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 306
    :cond_2
    goto :goto_1

    .line 305
    :catch_1
    move-exception v1

    move-object v2, v0

    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 307
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-object v0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readUtdid()Ljava/lang/String;
    .locals 10

    monitor-enter p0

    .line 315
    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    .local v0, "lNewSettingsUtdid":Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mqBRboGZkQPcAkyk"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 321
    goto :goto_0

    .line 319
    .end local p0    # "this":Lcom/ta/utdid2/device/UTUtdid;
    :catch_0
    move-exception v1

    .line 323
    :goto_0
    :try_start_2
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->f(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 325
    monitor-exit p0

    return-object v0

    .line 328
    :cond_0
    :try_start_3
    new-instance v1, Lcom/ta/utdid2/device/UTUtdidHelper2;

    invoke-direct {v1}, Lcom/ta/utdid2/device/UTUtdidHelper2;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 329
    .local v1, "lHelper2":Lcom/ta/utdid2/device/UTUtdidHelper2;
    const/4 v2, 0x0

    .line 332
    .local v2, "lNeedUpdateSettings":Z
    const/4 v3, 0x0

    .line 334
    .local v3, "data":Ljava/lang/String;
    :try_start_4
    iget-object v4, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dxCRMxhQkdGePGnp"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v4

    .line 338
    goto :goto_1

    .line 336
    :catch_1
    move-exception v4

    .line 339
    :goto_1
    :try_start_5
    invoke-static {v3}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    .line 341
    invoke-virtual {v1, v3}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePackWithBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, "lTmpUtdidBase64":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/UTUtdid;->f(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 344
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/UTUtdid;->c(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 345
    monitor-exit p0

    return-object v4

    .line 348
    :cond_1
    :try_start_6
    invoke-virtual {v1, v3}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, "lTmpUtdid":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/ta/utdid2/device/UTUtdid;->f(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 350
    iget-object v7, p0, Lcom/ta/utdid2/device/UTUtdid;->e:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v7, v6}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    .line 351
    .local v8, "lPTmpUtdid":Ljava/lang/String;
    move-object v8, v7

    invoke-static {v7}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 353
    invoke-direct {p0, v8}, Lcom/ta/utdid2/device/UTUtdid;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 356
    :try_start_7
    iget-object v7, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    .line 357
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "dxCRMxhQkdGePGnp"

    .line 356
    invoke-static {v7, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v3, v7

    .line 360
    goto :goto_2

    .line 358
    :catch_2
    move-exception v7

    .line 364
    .end local v8    # "lPTmpUtdid":Ljava/lang/String;
    :cond_2
    :goto_2
    :try_start_8
    iget-object v7, p0, Lcom/ta/utdid2/device/UTUtdid;->e:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v7, v3}, Lcom/ta/utdid2/device/UTUtdidHelper;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 365
    .local v7, "lDePackedUtdid":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/ta/utdid2/device/UTUtdid;->f(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 366
    iput-object v7, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;

    .line 368
    invoke-direct {p0, v7}, Lcom/ta/utdid2/device/UTUtdid;->a(Ljava/lang/String;)V

    .line 370
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->b(Ljava/lang/String;)V

    .line 372
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/ta/utdid2/device/UTUtdid;->c(Ljava/lang/String;)V

    .line 373
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v5

    .line 375
    .end local v4    # "lTmpUtdidBase64":Ljava/lang/String;
    .end local v6    # "lTmpUtdid":Ljava/lang/String;
    .end local v7    # "lDePackedUtdid":Ljava/lang/String;
    :cond_3
    goto :goto_3

    .line 378
    :cond_4
    const/4 v2, 0x1

    move-object v6, v5

    .line 382
    :goto_3
    :try_start_9
    invoke-direct {p0}, Lcom/ta/utdid2/device/UTUtdid;->b()Ljava/lang/String;

    move-result-object v4

    .line 383
    .local v4, "lSUtdid":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/UTUtdid;->f(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 384
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->e:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v5, v4}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, "lPackedUtdid":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 387
    invoke-direct {p0, v5}, Lcom/ta/utdid2/device/UTUtdid;->e(Ljava/lang/String;)V

    .line 390
    :cond_5
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/UTUtdid;->c(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0, v5}, Lcom/ta/utdid2/device/UTUtdid;->b(Ljava/lang/String;)V

    .line 393
    iput-object v4, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 394
    monitor-exit p0

    return-object v4

    .line 398
    .end local v5    # "lPackedUtdid":Ljava/lang/String;
    :cond_6
    :try_start_a
    iget-object v7, p0, Lcom/ta/utdid2/device/UTUtdid;->h:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    iget-object v8, p0, Lcom/ta/utdid2/device/UTUtdid;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 399
    .local v6, "lContent":Ljava/lang/String;
    move-object v6, v7

    invoke-static {v7}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 400
    invoke-virtual {v1, v6}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 401
    .local v7, "lUtdid":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/ta/utdid2/device/UTUtdid;->f(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 402
    iget-object v8, p0, Lcom/ta/utdid2/device/UTUtdid;->e:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v8, v6}, Lcom/ta/utdid2/device/UTUtdidHelper;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 404
    :cond_7
    invoke-direct {p0, v7}, Lcom/ta/utdid2/device/UTUtdid;->f(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 405
    iget-object v8, p0, Lcom/ta/utdid2/device/UTUtdid;->e:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v8, v7}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 406
    .local v8, "lBUtdid":Ljava/lang/String;
    invoke-static {v7}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 407
    iput-object v7, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;

    .line 408
    if-eqz v2, :cond_8

    .line 410
    invoke-direct {p0, v8}, Lcom/ta/utdid2/device/UTUtdid;->e(Ljava/lang/String;)V

    .line 413
    :cond_8
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/ta/utdid2/device/UTUtdid;->a(Ljava/lang/String;)V

    .line 414
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object v5

    .line 418
    .end local v7    # "lUtdid":Ljava/lang/String;
    .end local v8    # "lBUtdid":Ljava/lang/String;
    :cond_9
    monitor-exit p0

    return-object v5

    .line 314
    .end local v0    # "lNewSettingsUtdid":Ljava/lang/String;
    .end local v1    # "lHelper2":Lcom/ta/utdid2/device/UTUtdidHelper2;
    .end local v2    # "lNeedUpdateSettings":Z
    .end local v3    # "data":Ljava/lang/String;
    .end local v4    # "lSUtdid":Ljava/lang/String;
    .end local v6    # "lContent":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
