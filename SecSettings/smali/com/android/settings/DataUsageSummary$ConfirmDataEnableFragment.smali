.class public Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDataEnableFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmDataEnable"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;Z)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f090bd8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment$2;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090be4

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f090bd9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f090bda

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_2
    const v2, 0x7f090bdb

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
