.class Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$5;
.super Ljava/lang/Object;
.source "HomeScreenModeSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->showModeChangeDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$5;->this$0:Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->changeHomeScreenMode()V

    return-void
.end method
