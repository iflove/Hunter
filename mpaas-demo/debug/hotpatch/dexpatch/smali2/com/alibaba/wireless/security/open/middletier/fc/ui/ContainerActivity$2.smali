.class Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$2;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$2;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->j:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$2;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;

    iget-wide v4, v3, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->c:J

    const-string v6, "com.alibaba.wireless.security.open.middletier.fc.ui.BXIntentResult4323"

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(JLjava/lang/String;ILjava/lang/String;)V

    iget-object v9, v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$2;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;

    iget-boolean v10, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->i:Z

    iget-object v3, v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$2;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;

    iget-wide v3, v3, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->f:J

    sub-long v14, v1, v3

    const-string v11, "100107"

    const/4 v12, 0x0

    const-string v13, ""

    const-string v16, "Apitimeout"

    const-string/jumbo v17, "onCreate"

    invoke-virtual/range {v9 .. v17}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(ZLjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$2;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;

    invoke-static {v1}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;)V

    return-void
.end method
