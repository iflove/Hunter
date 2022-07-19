.class final Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;
.super Ljava/lang/Object;
.source "SpiderLogger.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/utils/SpiderLogger$SpiderWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/utils/SpiderLogger;->getSpiderImpl()Lcom/alipay/mobile/quinox/utils/SpiderLogger$SpiderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final mEndMtd:Ljava/lang/reflect/Method;

.field private final mEndSectionMtd:Ljava/lang/reflect/Method;

.field private final mStartMtd:Ljava/lang/reflect/Method;

.field private final mStartSectionMtd:Ljava/lang/reflect/Method;

.field final synthetic val$cls:Ljava/lang/Class;

.field final synthetic val$spider:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4

    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;->val$cls:Ljava/lang/Class;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;->val$spider:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "start"

    invoke-static {p1, v1, v0}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;->mStartMtd:Ljava/lang/reflect/Method;

    .line 71
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, p2

    const-string v3, "startSection"

    invoke-static {p1, v3, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;->mStartSectionMtd:Ljava/lang/reflect/Method;

    .line 72
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, p2

    const-string v1, "endSection"

    invoke-static {p1, v1, v0}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;->mEndSectionMtd:Ljava/lang/reflect/Method;

    .line 73
    new-array p2, p2, [Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    aput-object v0, p2, v2

    const-string v0, "end"

    invoke-static {p1, v0, p2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;->mEndMtd:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 4
    .param p1, "biz"    # Ljava/lang/String;

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;->mEndMtd:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;->val$spider:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "SpiderLogger"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public final endSection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "biz"    # Ljava/lang/String;
    .param p2, "sectionName"    # Ljava/lang/String;

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;->mEndSectionMtd:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;->val$spider:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    return-void

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "SpiderLogger"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public final start(Ljava/lang/String;)V
    .locals 4
    .param p1, "biz"    # Ljava/lang/String;

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;->mStartMtd:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;->val$spider:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    return-void

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "SpiderLogger"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public final startSection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "biz"    # Ljava/lang/String;
    .param p2, "sectionName"    # Ljava/lang/String;

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;->mStartSectionMtd:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;->val$spider:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "SpiderLogger"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method
