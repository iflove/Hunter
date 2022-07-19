.class public Lcom/j256/ormlite/misc/VersionUtils;
.super Ljava/lang/Object;
.source "VersionUtils.java"


# static fields
.field private static final CORE_VERSION:Ljava/lang/String; = "VERSION__4.48__"

.field private static coreVersion:Ljava/lang/String;

.field private static logger:Lcom/j256/ormlite/logger/Logger;

.field private static thrownOnErrors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/j256/ormlite/misc/VersionUtils;->thrownOnErrors:Z

    .line 24
    const-string v0, "VERSION__4.48__"

    sput-object v0, Lcom/j256/ormlite/misc/VersionUtils;->coreVersion:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static final checkCoreVersusAndroidVersions(Ljava/lang/String;)V
    .locals 3
    .param p0, "androidVersion"    # Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/j256/ormlite/misc/VersionUtils;->coreVersion:Ljava/lang/String;

    const-string v1, "core"

    const-string v2, "android"

    invoke-static {v1, v0, v2, p0}, Lcom/j256/ormlite/misc/VersionUtils;->logVersionWarnings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static final checkCoreVersusJdbcVersions(Ljava/lang/String;)V
    .locals 3
    .param p0, "jdbcVersion"    # Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/j256/ormlite/misc/VersionUtils;->coreVersion:Ljava/lang/String;

    const-string v1, "core"

    const-string v2, "jdbc"

    invoke-static {v1, v0, v2, p0}, Lcom/j256/ormlite/misc/VersionUtils;->logVersionWarnings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static getCoreVersion()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/j256/ormlite/misc/VersionUtils;->coreVersion:Ljava/lang/String;

    return-object v0
.end method

.method private static getLogger()Lcom/j256/ormlite/logger/Logger;
    .locals 1

    .line 86
    sget-object v0, Lcom/j256/ormlite/misc/VersionUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    if-nez v0, :cond_0

    .line 87
    const-class v0, Lcom/j256/ormlite/misc/VersionUtils;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/misc/VersionUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 89
    :cond_0
    sget-object v0, Lcom/j256/ormlite/misc/VersionUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    return-object v0
.end method

.method private static logVersionWarnings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "label1"    # Ljava/lang/String;
    .param p1, "version1"    # Ljava/lang/String;
    .param p2, "label2"    # Ljava/lang/String;
    .param p3, "version2"    # Ljava/lang/String;

    .line 59
    const-string v0, " for {}, version for {} is \'{}\'"

    const-string v1, "Unknown version"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-nez p1, :cond_0

    .line 60
    if-eqz p3, :cond_2

    .line 61
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    aput-object p2, v5, v3

    aput-object p3, v5, v2

    invoke-static {v6, v1, v0, v5}, Lcom/j256/ormlite/misc/VersionUtils;->warning(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 65
    :cond_0
    if-nez p3, :cond_1

    .line 66
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v4

    aput-object p0, v5, v3

    aput-object p1, v5, v2

    invoke-static {v6, v1, v0, v5}, Lcom/j256/ormlite/misc/VersionUtils;->warning(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 68
    :cond_1
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v4

    aput-object p1, v0, v3

    aput-object p2, v0, v2

    aput-object p3, v0, v5

    const-string v1, "Mismatched versions"

    const-string v2, ": {} is \'{}\', while {} is \'{}\'"

    invoke-static {v6, v1, v2, v0}, Lcom/j256/ormlite/misc/VersionUtils;->warning(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :cond_2
    return-void
.end method

.method static setThrownOnErrors(Z)V
    .locals 0
    .param p0, "thrownOnErrors"    # Z

    .line 52
    sput-boolean p0, Lcom/j256/ormlite/misc/VersionUtils;->thrownOnErrors:Z

    .line 53
    return-void
.end method

.method private static warning(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "th"    # Ljava/lang/Throwable;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/j256/ormlite/misc/VersionUtils;->getLogger()Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p3}, Lcom/j256/ormlite/logger/Logger;->warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    sget-boolean v0, Lcom/j256/ormlite/misc/VersionUtils;->thrownOnErrors:Z

    if-nez v0, :cond_0

    .line 80
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "See error log for details:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
