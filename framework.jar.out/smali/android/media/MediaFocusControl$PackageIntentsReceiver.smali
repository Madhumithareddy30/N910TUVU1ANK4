.class Landroid/media/MediaFocusControl$PackageIntentsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageIntentsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method private constructor <init>(Landroid/media/MediaFocusControl;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaFocusControl$PackageIntentsReceiver;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaFocusControl;Landroid/media/MediaFocusControl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl$PackageIntentsReceiver;-><init>(Landroid/media/MediaFocusControl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/media/MediaFocusControl$PackageIntentsReceiver;->this$0:Landroid/media/MediaFocusControl;

    const/4 v3, 0x1

    # invokes: Landroid/media/MediaFocusControl;->cleanupMediaButtonReceiverForPackage(Ljava/lang/String;Z)V
    invoke-static {v2, v1, v3}, Landroid/media/MediaFocusControl;->access$2800(Landroid/media/MediaFocusControl;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/media/MediaFocusControl$PackageIntentsReceiver;->this$0:Landroid/media/MediaFocusControl;

    # invokes: Landroid/media/MediaFocusControl;->cleanupMediaButtonReceiverForPackage(Ljava/lang/String;Z)V
    invoke-static {v2, v1, v3}, Landroid/media/MediaFocusControl;->access$2800(Landroid/media/MediaFocusControl;Ljava/lang/String;Z)V

    goto :goto_0
.end method
