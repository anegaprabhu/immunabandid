@extends('manufacture.layout.manufacturemaster')

@section('content')


                  <div class="row">
                    <div class="col-md-12 col-lg-12 col-sm-12">
                        <div class="white-box">
                            <div class="d-md-flex mb-3">
                                <h3 class="box-title mb-0">Completed Orders List</h3>
                                <div class="col-md-3 col-sm-4 col-xs-6 ml-auto text-right">
                                    <!--<select class="form-control row border-top">-->
                                    <!--    <option>March 2017</option>-->
                                    <!--    <option>April 2017</option>-->
                                    <!--    <option>May 2017</option>-->
                                    <!--    <option>June 2017</option>-->
                                    <!--    <option>July 2017</option>-->
                                    <!--</select>-->
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table no-wrap">
                                    <thead>
                                        <tr>
                                    <th class="border-top-0">#</th>
                                    <th class="border-top-0">Order No</th>
                                     <th class="border-top-0">Order Date</th>
                                     <th class="border-top-0">From Date</th>
                                    <th class="border-top-0">Name</th>
                                    <th class="border-top-0">band Image</th>
                                    </tr>
                                    </thead> 
                                    <tbody id="searchTable">
                                        @forelse ($comorders as $index => $list)
                                        
                                        <tr>
                                           <td>{{$index + 1}}</td>
                                            <td class="txt-oflo"><a href="{{url('/admin/dashboard/order/'.$list->id)}}">{{Crypt::decrypt($list->orderNumber)}}</a></td>
                                            
                                            <td class="txt-oflo">{{$list->order_date}}</td>
                                            <td><span class="text-success">{{$list->created_at}}</span></td>
                                              <td class="txt-oflo">{{Crypt::decrypt($list->firstname)}} {{Crypt::decrypt($list->lastname)}}</td>
                                               <td class="txt-oflo" id="td_wrp_{{$index}}">
											    
											   <img class="image_wrp" src="{{asset ('/public/bandimage/'.$list->band_image)}}" alt="Card Image" width="50" height="50" style="cursor:pointer;">
											   <div class="modal fade" id="{{$list->id}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
													aria-hidden="true">
													<div class="modal-dialog modal-dialog-centered">
														<div class="modal-content">
															<div class="modal-body">
																<img src="{{asset ('/public/bandimage/'.$list->band_image)}}" id="imagepreview" style="width: 100%; height: 264px;">
															</div>
														</div>
													</div>
												</div>
											   </td>
                                                 
                                               
                                        </tr>
                                    
                                   @empty
                                   <p>No Order Found</p>
                                   @endforelse
                                    </tbody>
                                </table>
                                {{ $comorders->links() }}
                            </div>
                        </div>
                    </div>
                </div>


@endsection
