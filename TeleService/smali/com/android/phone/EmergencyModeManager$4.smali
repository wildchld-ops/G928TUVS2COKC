.class Lcom/android/phone/EmergencyModeManager$4;
.super Ljava/lang/Object;
.source "EmergencyModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyModeManager;->changeNetworkType4LongLife(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyModeManager;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyModeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyModeManager$4;->this$0:Lcom/android/phone/EmergencyModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager$4;->this$0:Lcom/android/phone/EmergencyModeManager;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyModeManager;->changeNetworkType()V

    return-void
.end method
