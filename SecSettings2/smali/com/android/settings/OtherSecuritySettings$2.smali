.class Lcom/android/settings/OtherSecuritySettings$2;
.super Ljava/lang/Object;
.source "OtherSecuritySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OtherSecuritySettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OtherSecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OtherSecuritySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/OtherSecuritySettings$2;->this$0:Lcom/android/settings/OtherSecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/OtherSecuritySettings$2;->this$0:Lcom/android/settings/OtherSecuritySettings;

    invoke-virtual {v0}, Lcom/android/settings/OtherSecuritySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method
