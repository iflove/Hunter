.class final Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;
.super Ljava/lang/Object;
.source "LZMA_Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field final synthetic m:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;

    .line 278
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->m:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 297
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->b:Z

    return-void
.end method

.method public final b()V
    .locals 1

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->h:I

    iput-boolean v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->b:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 299
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
