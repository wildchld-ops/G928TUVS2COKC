.class interface abstract Lcom/android/server/telecom/ServiceBinder$Listener;
.super Ljava/lang/Object;
.source "ServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/ServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ServiceBinderClass:",
        "Lcom/android/server/telecom/ServiceBinder",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onUnbind(Lcom/android/server/telecom/ServiceBinder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TServiceBinderClass;)V"
        }
    .end annotation
.end method
