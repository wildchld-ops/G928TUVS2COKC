.class Lcom/android/settings/notification/ZenModeSettings$12$1;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeSettings$12;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/ZenModeSettings$12;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeSettings$12;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$12$1;->this$1:Lcom/android/settings/notification/ZenModeSettings$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$12$1;->this$1:Lcom/android/settings/notification/ZenModeSettings$12;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeSettings$12;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    # invokes: Lcom/android/settings/notification/ZenModeSettings;->refreshAutomationSection()V
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeSettings;->access$700(Lcom/android/settings/notification/ZenModeSettings;)V

    return-void
.end method
