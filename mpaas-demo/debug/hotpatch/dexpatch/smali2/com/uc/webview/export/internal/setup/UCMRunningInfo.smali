.class public Lcom/uc/webview/export/internal/setup/UCMRunningInfo;
.super Ljava/lang/Object;
.source "U4Source"


# instance fields
.field public final appCtx:Landroid/content/Context;

.field public final classLoader:Ljava/lang/ClassLoader;

.field public final coreType:I

.field public final isFirstTimeOdex:Z

.field public final isOldExtraKernel:Z

.field public final isShareCore:Z

.field public final loadType:I

.field public final shellClassLoader:Ljava/lang/ClassLoader;

.field public final ucMobileWebKit:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

.field public final ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/br;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;ZZLcom/uc/webview/export/internal/interfaces/UCMobileWebKit;IZI)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->appCtx:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    .line 30
    iput-object p3, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->classLoader:Ljava/lang/ClassLoader;

    .line 31
    iput-object p7, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucMobileWebKit:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    .line 32
    iput p8, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    .line 33
    iput-boolean p5, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isOldExtraKernel:Z

    .line 34
    iput-object p4, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->shellClassLoader:Ljava/lang/ClassLoader;

    .line 35
    iput-boolean p6, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isFirstTimeOdex:Z

    .line 36
    iput-boolean p9, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isShareCore:Z

    .line 37
    iput p10, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->loadType:I

    .line 38
    return-void
.end method
