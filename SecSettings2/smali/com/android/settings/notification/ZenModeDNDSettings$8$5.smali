.class Lcom/android/settings/notification/ZenModeDNDSettings$8$5;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeDNDSettings$8;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/ZenModeDNDSettings$8;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeDNDSettings$8;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$8$5;->this$1:Lcom/android/settings/notification/ZenModeDNDSettings$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$8$5;->this$1:Lcom/android/settings/notification/ZenModeDNDSettings$8;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$800(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
