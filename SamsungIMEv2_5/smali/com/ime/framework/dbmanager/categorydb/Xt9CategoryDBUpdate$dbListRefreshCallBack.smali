.class public interface abstract Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;
.super Ljava/lang/Object;
.source "Xt9CategoryDBUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "dbListRefreshCallBack"
.end annotation


# static fields
.field public static final REFRESH_DELAY:I = 0x1

.field public static final REFRESH_NETWORK_DOWN:I = 0x2

.field public static final REFRESH_SUCCESS:I


# virtual methods
.method public abstract onRefreshComplete(I)V
.end method

.method public abstract onRemovedDictionaries(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/dbmanager/categorydb/CategoryDB;",
            ">;)V"
        }
    .end annotation
.end method
