.class Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;
.super Landroid/database/ContentObserver;
.source "ToggleAccessControlPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->updateTimerPreference()V
    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$200(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V

    return-void
.end method
