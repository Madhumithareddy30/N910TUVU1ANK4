.class Lcom/android/settings/widget/SmartSwitchWidgetProvider$2;
.super Landroid/os/Handler;
.source "SmartSwitchWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SmartSwitchWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SmartSwitchWidgetProvider;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SmartSwitchWidgetProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$2;->this$0:Lcom/android/settings/widget/SmartSwitchWidgetProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    const/16 v0, 0x66

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$2;->this$0:Lcom/android/settings/widget/SmartSwitchWidgetProvider;

    # invokes: Lcom/android/settings/widget/SmartSwitchWidgetProvider;->updateAnimation()V
    invoke-static {v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->access$100(Lcom/android/settings/widget/SmartSwitchWidgetProvider;)V

    :cond_0
    return-void
.end method
