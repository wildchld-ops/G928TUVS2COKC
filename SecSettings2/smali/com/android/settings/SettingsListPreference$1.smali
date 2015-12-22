.class Lcom/android/settings/SettingsListPreference$1;
.super Ljava/lang/Object;
.source "SettingsListPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsListPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsListPreference$1;->this$0:Lcom/android/settings/SettingsListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SettingsListPreference$1;->this$0:Lcom/android/settings/SettingsListPreference;

    # getter for: Lcom/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings/SettingsListPreference;->access$000(Lcom/android/settings/SettingsListPreference;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
