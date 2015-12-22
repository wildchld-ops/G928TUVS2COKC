.class Lcom/android/settings/GlobalRoamingSettings$7;
.super Ljava/lang/Object;
.source "GlobalRoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GlobalRoamingSettings;->updateCountryInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GlobalRoamingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GlobalRoamingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GlobalRoamingSettings$7;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/GlobalRoamingSettings$7;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/GlobalRoamingSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/settings/GlobalRoamingSettings;->access$102(Lcom/android/settings/GlobalRoamingSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
