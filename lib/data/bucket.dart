
import 'package:flutterhorizontalbucketsample1/models/bucket_model.dart';

List<BucketModel> getBuckets(){

  List<BucketModel> bucket = <BucketModel>[];
  BucketModel bucketModel = new BucketModel();

  bucketModel.bucketName = "Category1";
  bucketModel.imageUrl = "https://images.unsplash.com/photo-1541746972996-4e0b0f43e02a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTAyfHxidXNpbmVzc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60";
  bucket.add(bucketModel);

  bucketModel = new BucketModel();
  bucketModel.bucketName = "Category2";
  bucketModel.imageUrl = "https://images.unsplash.com/photo-1476525223214-c31ff100e1ae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTl8fGhlYWx0aHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60";
  bucket.add(bucketModel);

  bucketModel = new BucketModel();
  bucketModel.bucketName = "Category3";
  bucketModel.imageUrl = "https://images.unsplash.com/photo-1587280501635-68a0e82cd5ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHNwb3J0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60";
  bucket.add(bucketModel);

  bucketModel = new BucketModel();
  bucketModel.bucketName = "Category4";
  bucketModel.imageUrl = "https://images.unsplash.com/photo-1603126857599-f6e157fa2fe6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fHNjaWVuY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60";
  bucket.add(bucketModel);

  bucketModel = new BucketModel();
  bucketModel.bucketName = "Category5";
  bucketModel.imageUrl = "https://images.unsplash.com/photo-1518770660439-4636190af475?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaG5vbG9neXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60";
  bucket.add(bucketModel);

  bucketModel = new BucketModel();
  bucketModel.bucketName = "Category6";
  bucketModel.imageUrl = "https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGdlbmVyYWx8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60";
  bucket.add(bucketModel);

  return bucket;
}