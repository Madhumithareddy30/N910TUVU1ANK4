.class Lcom/android/settings/toolbox/ToolboxEnabler$2;
.super Ljava/lang/Object;
.source "ToolboxEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/toolbox/ToolboxEnabler;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/toolbox/ToolboxEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/toolbox/ToolboxEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/toolbox/ToolboxEnabler$2;->this$0:Lcom/android/settings/toolbox/ToolboxEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxEnabler$2;->this$0:Lcom/android/settings/toolbox/ToolboxEnabler;

    # getter for: Lcom/android/settings/toolbox/ToolboxEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/toolbox/ToolboxEnabler;->access$100(Lcom/android/settings/toolbox/ToolboxEnabler;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxEnabler$2;->this$0:Lcom/android/settings/toolbox/ToolboxEnabler;

    # getter for: Lcom/android/settings/toolbox/ToolboxEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/toolbox/ToolboxEnabler;->access$000(Lcom/android/settings/toolbox/ToolboxEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "toolbox_onoff"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
