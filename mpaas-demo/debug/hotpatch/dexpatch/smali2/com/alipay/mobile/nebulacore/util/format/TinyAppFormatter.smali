.class public final Lcom/alipay/mobile/nebulacore/util/format/TinyAppFormatter;
.super Ljava/lang/Object;
.source "TinyAppFormatter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .locals 7
    .param p0, "sizeBytes"    # J

    .line 18
    long-to-float v0, p0

    .line 19
    .local v0, "result":F
    const-string v1, " B"

    .line 20
    .local v1, "suffix":Ljava/lang/String;
    const/high16 v2, 0x447a0000    # 1000.0f

    const/high16 v3, 0x44610000    # 900.0f

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    .line 21
    const-string v1, " KB"

    .line 22
    div-float/2addr v0, v2

    .line 24
    :cond_0
    cmpl-float v4, v0, v3

    if-lez v4, :cond_1

    .line 25
    const-string v1, " MB"

    .line 26
    div-float/2addr v0, v2

    .line 28
    :cond_1
    cmpl-float v4, v0, v3

    if-lez v4, :cond_2

    .line 29
    const-string v1, " GB"

    .line 30
    div-float/2addr v0, v2

    .line 32
    :cond_2
    cmpl-float v4, v0, v3

    if-lez v4, :cond_3

    .line 33
    const-string v1, " TB"

    .line 34
    div-float/2addr v0, v2

    .line 36
    :cond_3
    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    .line 37
    const-string v1, " PB"

    .line 38
    div-float/2addr v0, v2

    .line 41
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_5

    .line 42
    const-string v2, "%.2f"

    .local v2, "roundFormat":Ljava/lang/String;
    goto :goto_0

    .line 43
    .end local v2    # "roundFormat":Ljava/lang/String;
    :cond_5
    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_6

    .line 44
    const-string v2, "%.2f"

    .restart local v2    # "roundFormat":Ljava/lang/String;
    goto :goto_0

    .line 45
    .end local v2    # "roundFormat":Ljava/lang/String;
    :cond_6
    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_7

    .line 46
    const-string v2, "%.2f"

    .restart local v2    # "roundFormat":Ljava/lang/String;
    goto :goto_0

    .line 48
    .end local v2    # "roundFormat":Ljava/lang/String;
    :cond_7
    const-string v2, "%.0f"

    .line 50
    .restart local v2    # "roundFormat":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
