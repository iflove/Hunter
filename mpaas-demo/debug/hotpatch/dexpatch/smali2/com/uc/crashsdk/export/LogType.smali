.class public Lcom/uc/crashsdk/export/LogType;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final JAVA:I = 0x10

.field public static final JAVA_TYPE:Ljava/lang/String; = "java"

.field public static final NATIVE:I = 0x1

.field public static final NATIVE_TYPE:Ljava/lang/String; = "jni"

.field public static final UNEXP:I = 0x100

.field public static final UNEXP_ALL:I = 0x7f00

.field public static final UNEXP_ANR:I = 0x500

.field public static final UNEXP_EXIT:I = 0x2100

.field public static final UNEXP_KILL_PROCESS:I = 0x1100

.field public static final UNEXP_KNOWN_REASON:I = 0x7d00

.field public static final UNEXP_LOW_MEMORY:I = 0x900

.field public static final UNEXP_OTHER:I = 0x300

.field public static final UNEXP_RESTART:I = 0x4100

.field public static final UNEXP_TYPE:Ljava/lang/String; = "unexp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addType(II)I
    .locals 0

    .line 50
    and-int/lit16 p1, p1, 0x111

    or-int/2addr p0, p1

    return p0
.end method

.method public static isForJava(I)Z
    .locals 0

    .line 37
    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isForNative(I)Z
    .locals 1

    .line 41
    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isForUnexp(I)Z
    .locals 0

    .line 45
    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static removeType(II)I
    .locals 0

    .line 55
    and-int/lit16 p1, p1, 0x111

    not-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method
