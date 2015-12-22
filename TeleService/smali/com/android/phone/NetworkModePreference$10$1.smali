.class Lcom/android/phone/NetworkModePreference$10$1;
.super Ljava/lang/Object;
.source "NetworkModePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkModePreference$10;->onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/NetworkModePreference$10;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModePreference$10;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$10$1;->this$1:Lcom/android/phone/NetworkModePreference$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$10$1;->this$1:Lcom/android/phone/NetworkModePreference$10;

    # invokes: Lcom/android/phone/NetworkModePreference$10;->ChangeNetworkMode()V
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference$10;->access$3500(Lcom/android/phone/NetworkModePreference$10;)V

    return-void
.end method
