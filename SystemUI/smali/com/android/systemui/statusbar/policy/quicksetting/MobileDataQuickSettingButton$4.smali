.class Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$4;
.super Ljava/lang/Object;
.source "MobileDataQuickSettingButton.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->onDisplayMobileDataOffAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

.field final synthetic val$mDisableAlertCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$4;->val$mDisableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$4;->val$mDisableAlertCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    return-void
.end method