.class Lcom/android/settings/smartscreen/SmartScreenSettings$6;
.super Ljava/lang/Object;
.source "SmartScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartscreen/SmartScreenSettings;->showGuideDialogForScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/smartscreen/SmartScreenSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$6;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iput-object p2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$6;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$6;->val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$6;->val$edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$6;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v1, v1, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$6;->val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$6;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$6;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v0, v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_scroll_noti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$6;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$6;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    const v1, 0x7f090ff0

    const v2, 0x7f0912b8

    const-string v3, "smartscreen_scroll"

    # invokes: Lcom/android/settings/smartscreen/SmartScreenSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$500(Lcom/android/settings/smartscreen/SmartScreenSettings;IILjava/lang/String;)V

    :cond_0
    return-void
.end method
