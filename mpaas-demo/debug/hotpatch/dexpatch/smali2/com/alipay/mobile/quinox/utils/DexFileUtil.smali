.class public Lcom/alipay/mobile/quinox/utils/DexFileUtil;
.super Ljava/lang/Object;
.source "DexFileUtil.java"


# static fields
.field private static isLexFormat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    const-string v0, "dalvik.system.LexClassLoader"

    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->isLexFormat:Z

    .line 13
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    const-string v2, "DexFileUtil"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->isLexFormat:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 17
    sput-boolean v1, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->isLexFormat:Z

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateBundleFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "app_plugins"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "sourcePathName"    # Ljava/lang/String;
    .param p1, "outputDir"    # Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_3

    .line 45
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 48
    .local v0, "newStr":Ljava/lang/StringBuilder;
    move-object v0, v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 55
    .local v3, "lastSlash":I
    move v3, v1

    if-gez v1, :cond_2

    .line 56
    move-object v1, p0

    .local v1, "sourceFileName":Ljava/lang/String;
    goto :goto_0

    .line 58
    .end local v1    # "sourceFileName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    .restart local v1    # "sourceFileName":Ljava/lang/String;
    :goto_0
    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    move v5, v2

    .line 70
    .local v5, "lastDot":I
    move v5, v4

    if-gez v4, :cond_3

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {v0, v1, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 74
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->isLexFormat()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, ".lex"

    goto :goto_2

    :cond_4
    const-string v2, ".dex"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 42
    .end local v0    # "newStr":Ljava/lang/StringBuilder;
    .end local v1    # "sourceFileName":Ljava/lang/String;
    .end local v3    # "lastSlash":I
    .end local v5    # "lastDot":I
    :cond_5
    :goto_3
    return-object v0
.end method

.method public static isLexFormat()Z
    .locals 1

    .line 80
    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->isLexFormat:Z

    return v0
.end method
