.class public Lcom/alipay/instantrun/PatchProxy;
.super Ljava/lang/Object;
.source "PatchProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IR.PatchProxy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/alipay/instantrun/ChangeQuickRedirect;ZLjava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 79
    const/4 p5, 0x0

    if-nez p2, :cond_0

    .line 86
    return-object p5

    .line 88
    :cond_0
    invoke-static {p3, p4}, Lcom/alipay/instantrun/PatchProxy;->getClassMethod(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 89
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_1

    .line 90
    return-object p5

    .line 93
    :cond_1
    invoke-static {p0, p1, p3}, Lcom/alipay/instantrun/PatchProxy;->getObjects([Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p0

    .line 94
    invoke-interface {p2, p4, p0}, Lcom/alipay/instantrun/ChangeQuickRedirect;->accessDispatch(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static accessDispatchVoid([Ljava/lang/Object;Ljava/lang/Object;Lcom/alipay/instantrun/ChangeQuickRedirect;ZLjava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 98
    if-nez p2, :cond_0

    .line 105
    return-void

    .line 108
    :cond_0
    invoke-static {p3, p4}, Lcom/alipay/instantrun/PatchProxy;->getClassMethod(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 109
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 110
    return-void

    .line 112
    :cond_1
    invoke-static {p0, p1, p3}, Lcom/alipay/instantrun/PatchProxy;->getObjects([Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p0

    .line 113
    invoke-interface {p2, p4, p0}, Lcom/alipay/instantrun/ChangeQuickRedirect;->accessDispatch(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method private static getClassMethod(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 138
    const-string v0, ":"

    const-string v1, ""

    .line 144
    nop

    .line 145
    nop

    .line 146
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    goto :goto_0

    .line 147
    :catchall_0
    move-exception p0

    .line 148
    const-string p1, "IR.PatchProxy"

    invoke-static {p1, p0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    :goto_0
    return-object v1
.end method

.method private static getClassMethodName()[Ljava/lang/String;
    .locals 4

    .line 154
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 155
    new-array v1, v1, [Ljava/lang/String;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 157
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 158
    return-object v1
.end method

.method private static getObjects([Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;
    .locals 4

    .line 117
    if-nez p0, :cond_0

    .line 118
    const/4 p0, 0x0

    return-object p0

    .line 121
    :cond_0
    array-length v0, p0

    .line 122
    if-eqz p2, :cond_1

    .line 123
    new-array v1, v0, [Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_1
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 127
    :goto_0
    const/4 v2, 0x0

    .line 128
    :goto_1
    if-ge v2, v0, :cond_2

    .line 129
    aget-object v3, p0, v2

    aput-object v3, v1, v2

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 131
    :cond_2
    if-nez p2, :cond_3

    .line 132
    aput-object p1, v1, v2

    .line 134
    :cond_3
    return-object v1
.end method

.method public static isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/alipay/instantrun/ChangeQuickRedirect;ZLjava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0

    .line 52
    const/4 p5, 0x0

    if-nez p2, :cond_0

    .line 63
    return p5

    .line 65
    :cond_0
    invoke-static {p3, p4}, Lcom/alipay/instantrun/PatchProxy;->getClassMethod(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 66
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_1

    .line 67
    return p5

    .line 69
    :cond_1
    invoke-static {p0, p1, p3}, Lcom/alipay/instantrun/PatchProxy;->getObjects([Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p0

    .line 71
    :try_start_0
    invoke-interface {p2, p4, p0}, Lcom/alipay/instantrun/ChangeQuickRedirect;->isSupport(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    return p5
.end method

.method public static proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/alipay/instantrun/ChangeQuickRedirect;ZLjava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Lcom/alipay/instantrun/PatchProxyResult;
    .locals 2

    .line 42
    new-instance v0, Lcom/alipay/instantrun/PatchProxyResult;

    invoke-direct {v0}, Lcom/alipay/instantrun/PatchProxyResult;-><init>()V

    .line 43
    invoke-static/range {p0 .. p6}, Lcom/alipay/instantrun/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/alipay/instantrun/ChangeQuickRedirect;ZLjava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/instantrun/PatchProxyResult;->isSupported:Z

    .line 45
    invoke-static/range {p0 .. p6}, Lcom/alipay/instantrun/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/alipay/instantrun/ChangeQuickRedirect;ZLjava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/alipay/instantrun/PatchProxyResult;->result:Ljava/lang/Object;

    .line 47
    :cond_0
    return-object v0
.end method
